use cirru_edn::Edn;

mod ffi;

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

/// Invoke `copy` through C-safe buffer protocol v1.
///
/// # Safety
///
/// Request bytes must remain readable and `output` writable for this call.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn copy_calcit_ffi_v1(request_ptr: *const u8, request_len: usize, output: *mut ffi::CalcitFfiBuffer) -> i32 {
  // SAFETY: the shared adapter validates and copies every foreign input.
  unsafe { ffi::run_buffer_adapter(request_ptr, request_len, output, copy) }
}

/// Invoke `paste` through C-safe buffer protocol v1.
///
/// # Safety
///
/// Request bytes must remain readable and `output` writable for this call.
#[unsafe(no_mangle)]
pub unsafe extern "C" fn paste_calcit_ffi_v1(request_ptr: *const u8, request_len: usize, output: *mut ffi::CalcitFfiBuffer) -> i32 {
  // SAFETY: the shared adapter validates and copies every foreign input.
  unsafe { ffi::run_buffer_adapter(request_ptr, request_len, output, paste) }
}
