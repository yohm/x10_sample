import x10.io.Console;

class ParallelHelloWorld {
  public static def main(args:Rail[String]):void {
    for (p in Place.places()) {
      at (p) {
        async {
          Console.OUT.println("Hello, I'm " + here);
        }
      }
    }
  }
}
