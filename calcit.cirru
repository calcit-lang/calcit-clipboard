
{}
  :users $ {}
    |u0 $ {} (:theme :star-trail) (:id |u0) (:name |chen) (:nickname |chen) (:avatar nil) (:password |d41d8cd98f00b204e9800998ecf8427e)
  :ir $ {} (:package |clipboard)
    :files $ {}
      |clipboard.core $ {}
        :ns $ {} (:type :expr) (:by |u0) (:at 1630171366222)
          :data $ {}
            |T $ {} (:type :leaf) (:by |u0) (:at 1630171366222) (:text |ns)
            |j $ {} (:type :leaf) (:by |u0) (:at 1630171366222) (:text |clipboard.core)
            |r $ {} (:type :expr) (:by |u0) (:at 1630175118985)
              :data $ {}
                |T $ {} (:type :leaf) (:by |u0) (:at 1630175119637) (:text |:require)
                |j $ {} (:type :expr) (:by |u0) (:at 1630175120856)
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |u0) (:at 1638722987480) (:text |clipboard.$meta)
                    |j $ {} (:type :leaf) (:by |u0) (:at 1630175127717) (:text |:refer)
                    |r $ {} (:type :expr) (:by |u0) (:at 1630175128076)
                      :data $ {}
                        |T $ {} (:type :leaf) (:by |u0) (:at 1630175130627) (:text |calcit-dirname)
                |r $ {} (:type :expr) (:by |u0) (:at 1633181140100)
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |u0) (:at 1638722991750) (:text |clipboard.util)
                    |j $ {} (:type :leaf) (:by |u0) (:at 1633181140100) (:text |:refer)
                    |r $ {} (:type :expr) (:by |u0) (:at 1633181140100)
                      :data $ {}
                        |T $ {} (:type :leaf) (:by |u0) (:at 1634804181370) (:text |get-dylib-path)
        :configs $ {}
        :defs $ {}
          |copy! $ {} (:type :expr) (:by |u0) (:at 1630219258753)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1630219258753) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1638722870290) (:text |copy!)
              |r $ {} (:type :expr) (:by |u0) (:at 1630219268038)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1638722880362) (:text |content)
              |v $ {} (:type :expr) (:by |u0) (:at 1630219268038)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1633253263271) (:text |&call-dylib-edn)
                  |b $ {} (:type :expr) (:by |u0) (:at 1634804189975)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1634804196083) (:text |get-dylib-path)
                      |j $ {} (:type :leaf) (:by |u0) (:at 1638722906348) (:text "|\"/dylibs/libclipboard")
                  |r $ {} (:type :leaf) (:by |u0) (:at 1638722878035) (:text "|\"copy")
                  |v $ {} (:type :leaf) (:by |u0) (:at 1638722885281) (:text |content)
          |paste! $ {} (:type :expr) (:by |u0) (:at 1638722916972)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1638722916972) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1638722919726) (:text |paste!)
              |r $ {} (:type :expr) (:by |u0) (:at 1638722916972)
                :data $ {}
              |v $ {} (:type :expr) (:by |u0) (:at 1638722916972)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1638722916972) (:text |&call-dylib-edn)
                  |j $ {} (:type :expr) (:by |u0) (:at 1638722916972)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1638722916972) (:text |get-dylib-path)
                      |j $ {} (:type :leaf) (:by |u0) (:at 1638722916972) (:text "|\"/dylibs/libclipboard")
                  |r $ {} (:type :leaf) (:by |u0) (:at 1638722924519) (:text "|\"paste")
        :proc $ {} (:type :expr) (:by |u0) (:at 1630171366222)
          :data $ {}
      |clipboard.test $ {}
        :ns $ {} (:type :expr) (:by |u0) (:at 1633149625774)
          :data $ {}
            |T $ {} (:type :leaf) (:by |u0) (:at 1633149625774) (:text |ns)
            |j $ {} (:type :leaf) (:by |u0) (:at 1633149625774) (:text |clipboard.test)
            |r $ {} (:type :expr) (:by |u0) (:at 1633149974572)
              :data $ {}
                |T $ {} (:type :leaf) (:by |u0) (:at 1633149975596) (:text |:require)
                |j $ {} (:type :expr) (:by |u0) (:at 1634703855566)
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |u0) (:at 1638723003664) (:text |clipboard.core)
                    |j $ {} (:type :leaf) (:by |u0) (:at 1634703859915) (:text |:refer)
                    |r $ {} (:type :expr) (:by |u0) (:at 1634703860100)
                      :data $ {}
                        |T $ {} (:type :leaf) (:by |u0) (:at 1638723065998) (:text |copy!)
                        |j $ {} (:type :leaf) (:by |u0) (:at 1638723067495) (:text |paste!)
        :configs $ {}
        :defs $ {}
          |run-tests $ {} (:type :expr) (:by |u0) (:at 1633150008092)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1633150011172) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1633150008092) (:text |run-tests)
              |r $ {} (:type :expr) (:by |u0) (:at 1633150008092)
                :data $ {}
              |v $ {} (:type :expr) (:by |u0) (:at 1634703837934)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1634703837934) (:text |println)
                  |j $ {} (:type :leaf) (:by |u0) (:at 1638723080025) (:text "|\"%%%% test for clipboard")
              |x $ {} (:type :expr) (:by |u0) (:at 1634703837934)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1634703837934) (:text |println)
                  |j $ {} (:type :leaf) (:by |u0) (:at 1638723087560) (:text "|\"read clipboard")
                  |r $ {} (:type :expr) (:by |u0) (:at 1638723088242)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1638723088693) (:text |paste!)
              |y $ {} (:type :expr) (:by |u0) (:at 1634703837934)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1634703837934) (:text |println)
                  |j $ {} (:type :leaf) (:by |u0) (:at 1638723096244) (:text "|\"write to..")
                  |r $ {} (:type :expr) (:by |u0) (:at 1638723097382)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1638723099537) (:text |copy!)
                      |j $ {} (:type :expr) (:by |u0) (:at 1638723100983)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |u0) (:at 1638723101947) (:text |str)
                          |j $ {} (:type :expr) (:by |u0) (:at 1638723102312)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |u0) (:at 1638723102935) (:text |range)
                              |j $ {} (:type :leaf) (:by |u0) (:at 1638723103733) (:text |100)
          |main! $ {} (:type :expr) (:by |u0) (:at 1633149996242)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1633149996242) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1633149996242) (:text |main!)
              |r $ {} (:type :expr) (:by |u0) (:at 1633149996242)
                :data $ {}
              |v $ {} (:type :expr) (:by |u0) (:at 1633150002066)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1633150004371) (:text |run-tests)
          |reload! $ {} (:type :expr) (:by |u0) (:at 1633149998862)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1633149998862) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1633149998862) (:text |reload!)
              |r $ {} (:type :expr) (:by |u0) (:at 1633149998862)
                :data $ {}
        :proc $ {} (:type :expr) (:by |u0) (:at 1633149625774)
          :data $ {}
      |clipboard.util $ {}
        :ns $ {} (:type :expr) (:by |u0) (:at 1633181044360)
          :data $ {}
            |T $ {} (:type :leaf) (:by |u0) (:at 1633181044360) (:text |ns)
            |j $ {} (:type :leaf) (:by |u0) (:at 1633181044360) (:text |clipboard.util)
            |r $ {} (:type :expr) (:by |u0) (:at 1634804160546)
              :data $ {}
                |T $ {} (:type :leaf) (:by |u0) (:at 1634804161330) (:text |:require)
                |j $ {} (:type :expr) (:by |u0) (:at 1634804162771)
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |u0) (:at 1638723029067) (:text |clipboard.$meta)
                    |j $ {} (:type :leaf) (:by |u0) (:at 1634804168120) (:text |:refer)
                    |r $ {} (:type :expr) (:by |u0) (:at 1634804168421)
                      :data $ {}
                        |T $ {} (:type :leaf) (:by |u0) (:at 1634804171748) (:text |calcit-dirname)
                        |j $ {} (:type :leaf) (:by |u0) (:at 1634804175462) (:text |calcit-filename)
        :configs $ {}
        :defs $ {}
          |get-dylib-ext $ {} (:type :expr) (:by |u0) (:at 1630231398718)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1630231418304) (:text |defmacro)
              |j $ {} (:type :leaf) (:by |u0) (:at 1633181058353) (:text |get-dylib-ext)
              |r $ {} (:type :expr) (:by |u0) (:at 1630231398718)
                :data $ {}
              |v $ {} (:type :expr) (:by |u0) (:at 1630231403270)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1630231423910) (:text |case-default)
                  |b $ {} (:type :expr) (:by |u0) (:at 1630231429893)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1630231433951) (:text |&get-os)
                  |j $ {} (:type :leaf) (:by |u0) (:at 1630231427453) (:text "|\".so")
                  |r $ {} (:type :expr) (:by |u0) (:at 1630231437150)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1630231439152) (:text |:macos)
                      |j $ {} (:type :leaf) (:by |u0) (:at 1630231447585) (:text "|\".dylib")
                  |v $ {} (:type :expr) (:by |u0) (:at 1630231448478)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1630231449901) (:text |:windows)
                      |j $ {} (:type :leaf) (:by |u0) (:at 1630231461388) (:text "|\".dll")
          |get-dylib-path $ {} (:type :expr) (:by |u0) (:at 1634804142034)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1634804142034) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1634804142034) (:text |get-dylib-path)
              |n $ {} (:type :expr) (:by |u0) (:at 1634804146574)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1634804230294) (:text |p)
              |r $ {} (:type :expr) (:by |u0) (:at 1634804145483)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1634804145483) (:text |str)
                  |j $ {} (:type :expr) (:by |u0) (:at 1634804145483)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1634804145483) (:text |or-current-path)
                      |j $ {} (:type :leaf) (:by |u0) (:at 1634804145483) (:text |calcit-dirname)
                  |r $ {} (:type :leaf) (:by |u0) (:at 1634804157377) (:text |p)
                  |v $ {} (:type :expr) (:by |u0) (:at 1634804145483)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1634804145483) (:text |get-dylib-ext)
          |or-current-path $ {} (:type :expr) (:by |u0) (:at 1630245582276)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1630245583936) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1633181131099) (:text |or-current-path)
              |r $ {} (:type :expr) (:by |u0) (:at 1630245582276)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1630245585364) (:text |p)
              |v $ {} (:type :expr) (:by |u0) (:at 1630245585942)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1630245586336) (:text |if)
                  |j $ {} (:type :expr) (:by |u0) (:at 1630245586894)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1630245614560) (:text |blank?)
                      |j $ {} (:type :leaf) (:by |u0) (:at 1630245615061) (:text |p)
                  |r $ {} (:type :leaf) (:by |u0) (:at 1630245616843) (:text "|\".")
                  |v $ {} (:type :leaf) (:by |u0) (:at 1630245618366) (:text |p)
        :proc $ {} (:type :expr) (:by |u0) (:at 1633181044360)
          :data $ {}
  :configs $ {} (:port 6001) (:init-fn |clipboard.test/main!) (:reload-fn |clipboard.test/reload!)
    :modules $ []
    :version |0.0.1
  :entries $ {}
