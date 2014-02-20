public aspect LogWithAJ {

 pointcut callRun(): call(* io.crook..*.run(..));

 before(): callRun() {
    System.out.println("before run");
 }

 after(): callRun() {
    System.out.println("after run");
 }

}
