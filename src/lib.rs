use cirru_edn::Edn;

calcit_native_ffi::export_buffer_abi_v1!();

pub fn copy(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 1 {
    if let Edn::Str(name) = &args[0] {
      match cli_clipboard::set_contents((*name).to_string()) {
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
    match cli_clipboard::get_contents() {
      Ok(content) => Ok(Edn::str(content)),
      Err(e) => Err(e.to_string()),
    }
  } else {
    Err(format!("paste! expected 0 arg, got {:?}", args))
  }
}

calcit_native_ffi::export_edn_buffer_method_v1!(copy_calcit_ffi_v1, copy);
calcit_native_ffi::export_edn_buffer_method_v1!(paste_calcit_ffi_v1, paste);
