package io.crook

import io.crook.subpkg._

import org.aspectj._
import org.aspectj.lang._
import org.aspectj.lang.annotation._

@Aspect
class LogWithScalaAnnotations {

 @Pointcut("execution(* io.crook.subpkg..Test.*(..))")
 def execTest() {}

 @Before("execTest()")
 def beforeExecTest() { println("before exec test") }

}
