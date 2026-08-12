
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |clipboard) (:version |0.0.5)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'clipboard.test/main!) (:mode :native) (:reload-fn 'clipboard.test/reload!)
      :modules $ []
      :type-slots $ {}
  :files $ {}
    |clipboard.core $ %{} 'FileEntry
      :defs $ {}
        |copy! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn copy! (content)
              &call-dylib-edn (get-dylib-path |/dylibs/libclipboard) |copy content
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'String
        |paste! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn paste! () $ &call-dylib-edn (get-dylib-path |/dylibs/libclipboard) |paste
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns clipboard.core $ :require
            clipboard.$meta :refer $ calcit-dirname
            clipboard.util :refer $ get-dylib-path
    |clipboard.test $ %{} 'FileEntry
      :defs $ {}
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! () $ run-tests
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! $
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        |run-tests $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-tests () (println "|%%%% test for clipboard")
              println "|read clipboard" $ paste!
              println "|write to.." $ copy!
                str $ range 100
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns clipboard.test $ :require
            clipboard.core :refer $ copy! paste!
    |clipboard.util $ %{} 'FileEntry
      :defs $ {}
        |get-dylib-ext $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defmacro get-dylib-ext () $ case-default (&get-os) |.so (:macos |.dylib) (:windows |.dll)
          :examples $ []
          :schema $ :: 'Macro
            {} (:return 'String)
              :args $ []
        |get-dylib-path $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-dylib-path (p)
              str (or-current-path calcit-dirname) p $ get-dylib-ext
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String
        |or-current-path $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn or-current-path (p)
              if (blank? p) |. p
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'String)
              :args $ [] 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns clipboard.util $ :require
            clipboard.$meta :refer $ calcit-dirname calcit-filename
