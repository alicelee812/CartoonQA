//
//  QuestionViewController.swift
//  CartoonQA
//
//  Created by Alice on 2023/2/22.
//

import UIKit

class QuestionViewController: UIViewController {
    
    
    @IBOutlet weak var numberSlider: UISlider!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var questionImageView1: UIImageView!
    @IBOutlet weak var questionImageView2: UIImageView!
    @IBOutlet weak var questionImageView3: UIImageView!
    @IBOutlet weak var questionImageView4: UIImageView!
    @IBOutlet var optionButton: [UIButton]!
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    
    
    //宣告儲存Cartoon屬性的questions
    var questions =
    [Cartoon(questionPic1: "Anya_Color1", questionPic2: "Anya_Color2", questionPic3: "Anya_Color3", questionPic4: "Anya_Color4", option: ["佩佩豬", "安妮亞", "胖丁", "卡比獸"], answer: "安妮亞", characterPic: "Anya"),
     Cartoon(questionPic1: "Baikinman_Color1", questionPic2: "Baikinman_Color2", questionPic3: "Baikinman_Color3", questionPic4: "white", option: ["灶門禰豆子", "天線寶寶-丁丁", "耿鬼", "細菌人"], answer: "細菌人", characterPic: "Baikinman"),
     Cartoon(questionPic1: "Charles_Color1", questionPic2: "Charles_Color2", questionPic3: "Charles_Color3", questionPic4: "black", option: ["查理布朗", "皮卡丘", "海綿寶寶", "小熊維尼"], answer: "查理布朗", characterPic: "Charles"),
     Cartoon(questionPic1: "Conan_Color1", questionPic2: "Conan_Color2", questionPic3: "Conan_Color3", questionPic4: "white", option: ["哆啦A夢", "柯南", "唐老鴨", "白雪公主"], answer: "柯南", characterPic: "Conan"),
     Cartoon(questionPic1: "Crayon_Color1", questionPic2: "Crayon_Color2", questionPic3: "Crayon_Color3", questionPic4: "black", option: ["小小兵", "老皮", "蠟筆小新", "布丁狗"], answer: "蠟筆小新", characterPic: "Crayon"),
     Cartoon(questionPic1: "Doraemon_Color1", questionPic2: "Doraemon_Color2", questionPic3: "Crayon_Color1", questionPic4: "white", option: ["辛普森", "威力", "藍色小精靈", "哆啦A夢"], answer: "哆啦A夢", characterPic: "Doraemon"),
     Cartoon(questionPic1: "Doremi_Color1", questionPic2: "Doremi_Color2", questionPic3: "Doremi_Color3", questionPic4: "Anya_Color1", option: ["小魔女DoReMi", "頑皮豹", "熊抱哥", "小豬"], answer: "小魔女DoReMi", characterPic: "DoReMi"),
     Cartoon(questionPic1: "Hattori_Color1", questionPic2: "Charles_Color1", questionPic3: "Crayon_Color1", questionPic4: "white", option: ["音速小子", "伊布", "忍者哈特利", "水箭龜"], answer: "忍者哈特利", characterPic: "Hattori"),
     Cartoon(questionPic1: "Jerry_Color1", questionPic2: "Jerry_Color2", questionPic3: "Jerry_Color3", questionPic4: "black", option: ["咖哩麵包超人", "傑利鼠", "布丁狗", "章魚哥"], answer: "傑利鼠", characterPic: "Jerry"),
     Cartoon(questionPic1: "Kenny_Color1", questionPic2: "Kenny_Color2", questionPic3: "Crayon_Color3", questionPic4: "black", option: ["肯尼", "噴火龍", "加菲貓", "小病毒"], answer: "肯尼", characterPic: "Kenny"),
     Cartoon(questionPic1: "Maruko_Color1", questionPic2: "white", questionPic3: "Jerry_Color4", questionPic4: "black", option: ["小紅帽", "小不點", "佩佩豬", "櫻桃小丸子"], answer: "櫻桃小丸子", characterPic: "Maruko"),
     Cartoon(questionPic1: "Naruto_Color1", questionPic2: "Naruto_Color2", questionPic3: "Naruto_Color3", questionPic4: "Naruto_Color4", option: ["漩渦鳴人", "麵包超人", "小火龍", "咖哩麵包超人" ], answer: "漩渦鳴人", characterPic: "Naruto"),
     Cartoon(questionPic1: "Patrick_Color1", questionPic2: "Patrick_Color2", questionPic3: "Patrick_Color3", questionPic4: "white", option: ["妙蛙種子", "派大星", "天線寶寶-丁丁", "阿拉蕾"], answer: "派大星", characterPic: "Patrick"),
     Cartoon(questionPic1: "Pig_Color1", questionPic2: "Virus_Color1", questionPic3: "black", questionPic4: "white", option: ["佩佩豬", "吐司麵包超人", "史奴比", "小豬"], answer: "佩佩豬", characterPic: "Pig"),
     Cartoon(questionPic1: "Pikachu_Color1", questionPic2: "Pikachu_Color2", questionPic3: "Crayon_Color1", questionPic4: "black", option: ["蛋黃哥", "可達鴨", "皮卡丘", "小拉達"], answer: "皮卡丘", characterPic: "Pikachu"),
     Cartoon(questionPic1: "Police_Color1", questionPic2: "Charles_Color2", questionPic3: "white", questionPic4: "black", option: ["兩津勘吉", "口呆花", "小小兵", "酷企鵝"], answer: "兩津勘吉", characterPic: "Police"),
     Cartoon(questionPic1: "Sponge_Color1", questionPic2: "Sponge_Color2", questionPic3: "Sponge_Color3", questionPic4: "Crayon_Color1", option: ["跳跳虎", "米老鼠", "Hello Kitty", "海綿寶寶"], answer: "海綿寶寶", characterPic: "SpongeBob"),
     Cartoon(questionPic1: "Stitch_Color1", questionPic2: "Stitch_Color2", questionPic3: "Stitch_Color3", questionPic4: "Stitch_Color4", option: ["鬼斯", "柴郡貓", "史迪奇", "烏蘇拉"], answer: "史迪奇", characterPic: "Stitch"),
     Cartoon(questionPic1: "Tom_Color1", questionPic2: "Tom_Color2", questionPic3: "Tom_Color3", questionPic4: "white", option: ["湯姆貓", "音速小子", "布魯托", "龍貓"], answer: "湯姆貓", characterPic: "Tom"),
     Cartoon(questionPic1: "Virus_Color1", questionPic2: "Virus_Color2", questionPic3: "Kenny_Color1", questionPic4: "white", option: ["跳跳虎", "胖虎", "加菲貓", "小病毒"], answer: "小病毒", characterPic: "Virus")
    ]
    
    
    var index = 0             //宣告index儲存目前題數
    var score = 0             //宣告答題總分變數
    var answer = String()     //宣告答案變數
    var buttonEnabled = true  //button的狀態
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questions.shuffle()                //每次打開app時會更改題目順序
        questions[index].option.shuffle()  //更改option順序
        updateView()
        //更改slider thumb image
        let image = UIImage(named: "footprints")
        numberSlider.setThumbImage(image, for: .normal)
        //設定questionImageView的邊框顏色及寬度
        questionImageView1.layer.borderColor = CGColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        questionImageView1.layer.borderWidth = 2
        questionImageView2.layer.borderColor = CGColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        questionImageView2.layer.borderWidth = 2
        questionImageView3.layer.borderColor = CGColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        questionImageView3.layer.borderWidth = 2
        questionImageView4.layer.borderColor = CGColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        questionImageView4.layer.borderWidth = 2
    }
    
    func updateView() {
        numberSlider.value = Float(index + 1)       //slider顯示目前題數
        numberLabel.text = "\(index + 1) / 10"      //label顯示目前題數
        scoreLabel.text = "\(score)"                //分數計算
        //讀取每個題目的圖片
        questionImageView1.image = UIImage(named: "\(questions[index].questionPic1)")
        questionImageView2.image = UIImage(named: "\(questions[index].questionPic2)")
        questionImageView3.image = UIImage(named: "\(questions[index].questionPic3)")
        questionImageView4.image = UIImage(named: "\(questions[index].questionPic4)")
        answer = questions[index].answer           //讀取答案
        //正確圖片出來前的預設頭像
        characterImageView.image = UIImage(systemName: "questionmark.app")
        //設定option button顯示的title
        for i in 0...3 {
            //檢查i
            if i >= questions.startIndex && i < questions.endIndex {
               print(questions[i])
            }
            optionButton[i].setTitle(questions[index].option[i], for: .normal)
            
        }
    }
    
    
    //選擇答案
    @IBAction func selectAnswer(_ sender: UIButton) {
        if buttonEnabled {
            buttonEnabled = false
            //如果選到正確答案
            if sender.titleLabel?.text == questions[index].answer {
                sender.tintColor = .orange
                score += 10
                scoreLabel.text = "\(score)"
                characterImageView.image = UIImage(named: "\(questions[index].characterPic)")
            } else {
                sender.tintColor = .lightGray
                sender.setTitleColor(.gray, for: .normal)
                characterImageView.image = UIImage(named: "\(questions[index].characterPic)")
                //找出正確答案，並呈現橘色
                for choicebtn in 0...optionButton.count-1 {
                    if optionButton[choicebtn].titleLabel?.text == questions[index].answer {
                        optionButton[choicebtn].tintColor = .orange
                    }
                }
            }
        }
        //做答完第十題則計算分數
        if index == 9 {
            caculateScore()
        }
    }

    
    //下一題
    @IBAction func nextQuestion(_ sender: UIButton) {
        index += 1
        updateView()
        
        //當回答10題時，不能按下一題
        if index == 10 {
            caculateScore()
        }
        
        //option button和字體的顏色改回原本的樣子
        for i in 0...3 {
            optionButton[i].tintColor = .systemTeal
            optionButton[i].setTitleColor(.white, for: .normal)
        }
        
        buttonEnabled = true
    }
    
    
    //再玩一次
    func playAgain() {
        index = 0
        score = 0
        viewDidLoad()
        
        for i in 0...3 {
            optionButton[i].tintColor = .systemTeal
            optionButton[i].setTitleColor(.white, for: .normal)
        }
        
        buttonEnabled = true
    }
    
    
    //第十題作答完成時，計算分數
    func caculateScore() {
        if score >= 80 {
            let alertController = UIAlertController(title: "總分\(score)分", message: "你是卡通神人!!!", preferredStyle: .alert)
            //確認按鈕
            let okAction = UIAlertAction(title: "再玩一次", style: .default) { _
                in
                self.playAgain()
            }
            //取消按鈕
            let cancelAction = UIAlertAction(title: "結束", style: .destructive) {
                _ in
                self.dismiss(animated: true)
            }
            //將按鈕加入訊息視窗
            alertController.addAction(okAction)
            alertController.addAction(cancelAction)
            //顯示訊息視窗
            present(alertController, animated: true, completion: nil)
        } else if score >= 60 && score < 80 {
            let alertController2 = UIAlertController(title: "總分\(score)分", message: "哇嗚～你好厲害!", preferredStyle: .alert)
            //確認按鈕
            let okAction = UIAlertAction(title: "再玩一次", style: .default) { _
                in
                self.playAgain()
            }
            //取消按鈕
            let cancelAction = UIAlertAction(title: "結束", style: .destructive) {
                _ in
                self.dismiss(animated: true)
            }
            //將按鈕加入訊息視窗
            alertController2.addAction(okAction)
            alertController2.addAction(cancelAction)
            //顯示訊息視窗
            present(alertController2, animated: true, completion: nil)
        } else if score >= 40 && score < 60 {
            let alertController3 = UIAlertController(title: "總分\(score)分", message: "加油加油!", preferredStyle: .alert)
            //確認按鈕
            let okAction = UIAlertAction(title: "再玩一次", style: .default) { _
                in
                self.playAgain()
            }
            //取消按鈕
            let cancelAction = UIAlertAction(title: "結束", style: .destructive) {
                _ in
                self.dismiss(animated: true)
            }
            //將按鈕加入訊息視窗
            alertController3.addAction(okAction)
            alertController3.addAction(cancelAction)
            //顯示訊息視窗
            present(alertController3, animated: true, completion: nil)
        } else {
            let alertController4 = UIAlertController(title: "總分\(score)分", message: "可以多看一些卡通喔！", preferredStyle: .alert)
            //確認按鈕
            let okAction = UIAlertAction(title: "再玩一次", style: .default) { _
                in
                self.playAgain()
            }
            //取消按鈕
            let cancelAction = UIAlertAction(title: "結束", style: .destructive) {
                _ in
                self.dismiss(animated: true)
            }
            //將按鈕加入訊息視窗
            alertController4.addAction(okAction)
            alertController4.addAction(cancelAction)
            //顯示訊息視窗
            present(alertController4, animated: true, completion: nil)
        }
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
