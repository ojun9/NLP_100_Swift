//
//  Chapter2.swift
//  NLP_100_Swift
//
//  Created by jun on 2019/12/08.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import Cocoa

struct Chapter2 {
 
   
   /// 10. 行数のカウント
   //行数をカウントせよ．確認にはwcコマンドを用いよ．
   func Q10(_ input: String) -> Int {
      return input.components(separatedBy: .newlines).filter{ $0 != "" }.count
   }
   
   /// 11. タブをスペースに置換
   //タブ1文字につきスペース1文字に置換せよ．確認にはsedコマンド，trコマンド，もしくはexpandコマンドを用いよ．
   func Q11(_ input: String) -> String {
      return input.components(separatedBy: "\t").joined(separator: " ")
   }
   
   /// 12. 1列目をcol1.txtに，2列目をcol2.txtに保存
   //各行の1列目だけを抜き出したものをcol1.txtに，2列目だけを抜き出したものをcol2.txt
   //としてファイルに保存せよ．確認にはcutコマンドを用いよ．
   func Q12(_ input: String, _ colNum: Int) -> String {
      let line = input.components(separatedBy: .newlines)
      return line.map { Line -> String in
         let col = Line.components(separatedBy: "\t")
         return col.count > colNum ? col[colNum] : ""
      }.filter{ $0 != ""}.joined(separator: "\n") + "\n"
   }
   
   /// 13. col1.txtとcol2.txtをマージ
   //12で作ったcol1.txtとcol2.txtを結合し，
   //元のファイルの1列目と2列目をタブ区切りで並べたテキストファイルを作成せよ．確認にはpasteコマンドを用いよ．
   func Q13(_ input1: String, _ input2: String) -> String {
      let col1 = input1.components(separatedBy: .newlines)
      let col2 = input2.components(separatedBy: .newlines)
      let zips = zip(col1, col2).map{ $0 + "\t" + $1 + "\n"}
      return zips.filter{ $0 != "\t\n"}.joined()
   }
   
   /// 14. 先頭からN行を出力
   //自然数Nをコマンドライン引数などの手段で受け取り，入力のうち先頭のN行だけを表示せよ．確認にはheadコマンドを用いよ．
   func Q14(_ input: String, lineNum: Int) -> String? {
      let line = input.components(separatedBy: .newlines)
      guard line.count > lineNum else { return nil }
      var retStr = ""
      for tmp in 0 ..< lineNum { retStr += line[tmp] + "\n" }
      
      return retStr
   }
   
   /// 15. 末尾のN行を出力
   //自然数Nをコマンドライン引数などの手段で受け取り，入力のうち末尾のN行だけを表示せよ．確認にはtailコマンドを用いよ．
   func Q15() {
      
   }
   
   /// 16. ファイルをN分割する
   //自然数Nをコマンドライン引数などの手段で受け取り，入力のファイルを行単位でN分割せよ．同様の処理をsplitコマンドで実現せよ．
   func Q16() {
      
   }
   
   /// 17. １列目の文字列の異なり
   //1列目の文字列の種類（異なる文字列の集合）を求めよ．確認にはsort, uniqコマンドを用いよ．
   func Q17() {
      
   }
   
   /// 18. 各行を3コラム目の数値の降順にソート
   //各行を3コラム目の数値の逆順で整列せよ（注意: 各行の内容は変更せずに並び替えよ）．
   //確認にはsortコマンドを用いよ（この問題はコマンドで実行した時の結果と合わなくてもよい）．
   func Q18() {
      
   }
   
   /// 19. 各行の1コラム目の文字列の出現頻度を求め，出現頻度の高い順に並べる
   //各行の1列目の文字列の出現頻度を求め，その高い順に並べて表示せよ．確認にはcut, uniq, sortコマンドを用いよ．
   func Q19() {
      
   }

}
