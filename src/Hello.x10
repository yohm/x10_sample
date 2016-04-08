import x10.io.Console;                              // C++でいうところの #include <iostream>

class Hello {                                       // クラス名はファイル名と同じでなくてはいけない
  public static def main(args:Rail[String]):void {  // staticメソッドとしてmainを定義
    Console.OUT.println("Hello, world");            // 標準出力にプリント
  }
}

