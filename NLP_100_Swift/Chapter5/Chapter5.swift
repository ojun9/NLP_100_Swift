//
//  Chapter5.swift
//  NLP_100_Swift
//
//  Created by jun on 2020/01/15.
//  Copyright © 2020 jun. All rights reserved.
//

import Foundation

struct Chapter5 {
   
   //40. 係り受け解析結果の読み込み（形態素）
   //形態素を表すクラスMorphを実装せよ．このクラスは表層形（surface），基本形（base），品詞（pos），品詞細分類1（pos1）を
   //メンバ変数に持つこととする．さらに，CaboChaの解析結果（neko.txt.cabocha）を読み込み，
   //各文をMorphオブジェクトのリストとして表現し，3文目の形態素列を表示せよ．
   func Q40(_ input: String) -> [Morph] {
      return input.components(separatedBy: .newlines).reduce([Morph]()) { MorArray, Line in
         var MorArray = MorArray
         let splitTabLine = Line.components(separatedBy: "\t")
         if splitTabLine.count == 1 || splitTabLine[0] == "*" {
            print("return")
            return MorArray
         }
         if MorArray.count % 2500 == 0 { print(MorArray.count)}
         let splitConma = splitTabLine[1].components(separatedBy: ",")
         MorArray.append(Morph(surface: splitTabLine[0], base: splitConma[6], pos: splitConma[0], pos1: splitConma[1]))
         return MorArray
      }
   }
   

   
   //41. 係り受け解析結果の読み込み（文節・係り受け）
   //40に加えて，文節を表すクラスChunkを実装せよ．このクラスは形態素（Morphオブジェクト）のリスト（morphs），係り先文節インデックス番号（dst），
   //係り元文節インデックス番号のリスト（srcs）をメンバ変数に持つこととする．さらに，入力テキストのCaboChaの解析結果を読み込み，
   //１文をChunkオブジェクトのリストとして表現し，8文目の文節の文字列と係り先を表示せよ．第5章の残りの問題では，ここで作ったプログラムを活用せよ．
   func Q41() -> Void {

   }
   
   //42. 係り元と係り先の文節の表示
   //係り元の文節と係り先の文節のテキストをタブ区切り形式ですべて抽出せよ．ただし，句読点などの記号は出力しないようにせよ．
   func Q42() -> Void {
      
   }
   
   //43. 名詞を含む文節が動詞を含む文節に係るものを抽出
   //名詞を含む文節が，動詞を含む文節に係るとき，これらをタブ区切り形式で抽出せよ．ただし，句読点などの記号は出力しないようにせよ．
   func Q43() -> Void {

   }
   
   //44. 係り受け木の可視化
   //与えられた文の係り受け木を有向グラフとして可視化せよ．可視化には，係り受け木をDOT言語に変換し，
   //Graphvizを用いるとよい．また，Pythonから有向グラフを直接的に可視化するには，pydotを使うとよい．
   func Q44() -> Void {

   }
   
   //45. 動詞の格パターンの抽出
   //今回用いている文章をコーパスと見なし，日本語の述語が取りうる格を調査したい．
   // 動詞を述語，動詞に係っている文節の助詞を格と考え，述語と格をタブ区切り形式で出力せよ．
   //ただし，出力は以下の仕様を満たすようにせよ．
   //   1.動詞を含む文節において，最左の動詞の基本形を述語とする
   //   2.述語に係る助詞を格とする
   //   3.述語に係る助詞（文節）が複数あるときは，すべての助詞をスペース区切りで辞書順に並べる
   //「吾輩はここで始めて人間というものを見た」という例文（neko.txt.cabochaの8文目）を考える．
   // この文は「始める」と「見る」の２つの動詞を含み，始める」に係る文節は「ここで」，「見る」に係る文節は「吾輩は」と「ものを」と解析された場合は，
   //次のような出力になるはずである．
   //
   //```
   //始める  で
   //見る    は を
   //```
   //このプログラムの出力をファイルに保存し，以下の事項をUNIXコマンドを用いて確認せよ．
   //   1.コーパス中で頻出する述語と格パターンの組み合わせ
   //   2.「する」「見る」「与える」という動詞の格パターン（コーパス中で出現頻度の高い順に並べよ）
   func Q45() -> Void {

   }
   
   //46. 動詞の格フレーム情報の抽出
   //45のプログラムを改変し，述語と格パターンに続けて項（述語に係っている文節そのもの）をタブ区切り形式で出力せよ．45の仕様に加えて，以下の仕様を満たすようにせよ．
   //   1.項は述語に係っている文節の単語列とする（末尾の助詞を取り除く必要はない）
   //   2.述語に係る文節が複数あるときは，助詞と同一の基準・順序でスペース区切りで並べる
   //「吾輩はここで始めて人間というものを見た」という例文（neko.txt.cabochaの8文目）を考える．
   //この文は「始める」と「見る」の２つの動詞を含み，「始める」に係る文節は「ここで」，「見る」に係る文節は「吾輩は」と「ものを」と解析された場合は，次のような出力になるはずである．
   //
   //```
   //始める  で      ここで
   //見る    は を   吾輩は ものを
   //```
   func Q46() -> Void {

   }
   
   //47. 機能動詞構文のマイニング
   //動詞のヲ格にサ変接続名詞が入っている場合のみに着目したい．46のプログラムを以下の仕様を満たすように改変せよ．

   //「サ変接続名詞+を（助詞）」で構成される文節が動詞に係る場合のみを対象とする
   //   1.述語は「サ変接続名詞+を+動詞の基本形」とし，文節中に複数の動詞があるときは，最左の動詞を用いる
   //   2.述語に係る助詞（文節）が複数あるときは，すべての助詞をスペース区切りで辞書順に並べる
   //   3.述語に係る文節が複数ある場合は，すべての項をスペース区切りで並べる（助詞の並び順と揃えよ）
   //例えば「別段くるにも及ばんさと、主人は手紙に返事をする。」という文から，以下の出力が得られるはずである．
   //
   //```
   //返事をする      と に は        及ばんさと 手紙に 主人は
   //```
   //
   //このプログラムの出力をファイルに保存し，以下の事項をUNIXコマンドを用いて確認せよ．
   //   1.コーパス中で頻出する述語（サ変接続名詞+を+動詞）
   //   2.コーパス中で頻出する述語と助詞パターン
   func Q47() -> Void {
  
   }
   
   //48. 名詞から根へのパスの抽出
   //文中のすべての名詞を含む文節に対し，その文節から構文木の根に至るパスを抽出せよ． ただし，構文木上のパスは以下の仕様を満たすものとする．
   //   1.各文節は（表層形の）形態素列で表現する
   //   2.パスの開始文節から終了文節に至るまで，各文節の表現を"->"で連結する
   //「吾輩はここで始めて人間というものを見た」という文（neko.txt.cabochaの8文目）から，次のような出力が得られるはずである．
   //
   //```
   //吾輩は -> 見た
   //ここで -> 始めて -> 人間という -> ものを -> 見た
   //人間という -> ものを -> 見た
   //ものを -> 見た
   //```
   //
   func Q48() -> Void {

   }
   
   //49. 名詞間の係り受けパスの抽出
   //文中のすべての名詞句のペアを結ぶ最短係り受けパスを抽出せよ．ただし，名詞句ペアの文節番号がiとj（i<j）のとき，係り受けパスは以下の仕様を満たすものとする．
   //   1.問題48と同様に，パスは開始文節から終了文節に至るまでの各文節の表現（表層形の形態素列）を"->"で連結して表現する
   //   2.文節iとjに含まれる名詞句はそれぞれ，XとYに置換する
   //また，係り受けパスの形状は，以下の2通りが考えられる．
   //   1.文節iから構文木の根に至る経路上に文節jが存在する場合: 文節iから文節jのパスを表示
   //   2.上記以外で，文節iと文節jから構文木の根に至る経路上で共通の文節kで交わる場合: 文節iから文節kに至る直前のパスと文節jから文節k
   //     に至る直前までのパス，文節kの内容を"|"で連結して表示
   //例えば，「吾輩はここで始めて人間というものを見た。」という文（neko.txt.cabochaの8文目）から，次のような出力が得られるはずである．
   //
   //```
   //Xは | Yで -> 始めて -> 人間という -> ものを | 見た
   //Xは | Yという -> ものを | 見た
   //Xは | Yを | 見た
   //Xで -> 始めて -> Y
   //Xで -> 始めて -> 人間という -> Y
   //Xという -> Y
   //```
   //
   func Q49() -> Void {

   }
}