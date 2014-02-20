/*
* Aspects to produce compile-time warnings and errors
*/
public aspect SystemArchitecture {

 pointcut inRoot(): within(io.crook.*);

 pointcut callSub(): call(io.crook.subpkg..Test.new(..)) || call(* io.crook.subpkg..Test.*(..));

 declare warning : inRoot() && callSub() : "no calls to subpackage!";

}
