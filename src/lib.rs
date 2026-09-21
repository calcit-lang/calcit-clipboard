use cirru_edn::Edn;
use cli_clipboard::{ClipboardContext, ClipboardProvider};
use std::{cell::RefCell, error::Error};

calcit_native_ffi::export_buffer_abi_v1!();

thread_local! {
  // X11 clipboard contents are owned by the process that set them. Keep the
  // context alive across FFI calls so a value copied by `copy!` remains
  // available to a later `paste!` call in the same process.
  static CLIPBOARD: RefCell<Option<ClipboardContext>> = const { RefCell::new(None) };
}

fn with_clipboard<T>(operation: impl FnOnce(&mut ClipboardContext) -> Result<T, Box<dyn Error>>) -> Result<T, String> {
  CLIPBOARD.with(|slot| {
    let mut slot = slot.borrow_mut();
    if slot.is_none() {
      *slot = Some(ClipboardContext::new().map_err(|error| error.to_string())?);
    }
    match slot.as_mut() {
      Some(context) => operation(context).map_err(|error| error.to_string()),
      None => Err("clipboard context was not initialized".to_owned()),
    }
  })
}

pub fn copy(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 1 {
    if let Edn::Str(name) = &args[0] {
      match with_clipboard(|context| context.set_contents((*name).to_string())) {
        Ok(()) => Ok(Edn::Nil),
        Err(e) => Err(e.to_string()),
      }
    } else {
      Err(format!("copy! expected a piece of string, got {:?}", args))
    }
  } else {
    Err(format!("copy! expected 1 arg, got {:?}", args))
  }
}

pub fn paste(args: Vec<Edn>) -> Result<Edn, String> {
  if args.is_empty() {
    match with_clipboard(ClipboardProvider::get_contents) {
      Ok(content) => Ok(Edn::str(content)),
      Err(e) => Err(e.to_string()),
    }
  } else {
    Err(format!("paste! expected 0 arg, got {:?}", args))
  }
}

calcit_native_ffi::export_edn_buffer_method_v1!(copy_calcit_ffi_v1, copy);
calcit_native_ffi::export_edn_buffer_method_v1!(paste_calcit_ffi_v1, paste);
