package io.crook.subpkg

class Test {
 def run { println("running subpkg.Test.run") }
 def runWithArg(s:String) { println(s"running subpkg.Test.run with: $s") }
}
