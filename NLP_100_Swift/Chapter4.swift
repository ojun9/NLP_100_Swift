//
//  Chapter4.swift
//  NLP_100_Swift
//
//  Created by jun on 2020/01/01.
//  Copyright © 2020 jun. All rights reserved.
//

import Foundation


struct Chapter4 {
   
   //30. 形態素解析結果の読み込み
   //形態素解析結果（neko.txtmecab）を読み込むプログラムを実装せよ．
   //ただし，各形態素は表層形（surface），基本形（base），品詞（pos），品詞細分類1（pos1）をキーとするマッピング型に格納し，
   //1文を形態素（マッピング型）のリストとして表現せよ．第4章の残りの問題では，ここで作ったプログラムを活用せよ．
   func Q30(_ input: String) -> [[String: String]] {
      return input.components(separatedBy: .newlines).reduce([[String: String]]()) { dic, Line in
         var dic = dic
         let splitTabLine = Line.components(separatedBy: "\t")
         if splitTabLine.count == 1 { return dic }
         if dic.count % 2500 == 0 { print(dic.count)}
         let splitConma = splitTabLine[1].components(separatedBy: ",")
         dic.append(["surface": splitTabLine[0], "base": splitConma[6],"pos": splitConma[0], "pos1": splitConma[1]])
         return dic
      }
   }
   
   func getResultOfQ30() -> [[String: String]] {
      return UserDefaults.standard.value(forKey: "resultOfQ30") as! [[String: String]]
   }
   
   //31. 動詞
   //動詞の表層形をすべて抽出せよ．
   func Q31() -> [String] {
      let q30 = getResultOfQ30()
      return q30.map {
         if $0["pos"] != "動詞" { return ""}
         return $0["surface"]!
      }.filter { $0 != ""}
   }
}
