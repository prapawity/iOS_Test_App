//
//  ViewController.swift
//  project1
//
//  Created by Student on 24/5/2561 BE.
//  Copyright © 2561 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var movieTableView: UITableView!
    
    var allMovie: [MovieModel] = []
    var state:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTableView.delegate = self
        movieTableView.dataSource = self
        
        var avenger = MovieModel(name: "Avenger: Infinity War")
        avenger.img = "infinite"
        avenger.descThai = "    อเวนเจอร์ส: มหาสงครามล้างจักรวาล (อังกฤษ: Avengers: Infinity War) ภาพยนตร์ลำดับที่สิบเก้าในจักรวาลภาพยนตร์มาร์เวล เป็นฝีมือการกำกับของ พี่น้องรุสโซ่ และเขียนบทโดย คริสโตเฟอร์ มาร์คัส กับ สตีเวน แม็กฟีลี่ สร้างสรรค์โดย Marvel Studios และ จัดจำหน่ายโดย Walt Disney Studios Motion Picture เป็นภาพยนตร์ซูเปอร์ฮีโร่ที่สร้างจาก อเวนเจอร์ส ซึ่งเป็นทีมรวมซูเปอร์ฮีโร่ของ มาร์เวลคอมิกส์ โดยตั้งใจให้เป็นภาคต่อของดิ อเวนเจอร์ส และ อเวนเจอร์ส: มหาศึกอัลตรอนถล่มโลก ในอเวนเจอร์ส: มหาสงครามล้างจักรวาล เหล่า อเวนเจอร์ส ต้องผนึกกำลังกับทีม การ์เดียนส์ออฟเดอะกาแล็กซี่ เพื่อเผชิญหน้ากับธานอส (Thanos) ผู้พยายามรวบรวม Infinity Stones เพื่อล้างบางครึ่งจักรวาล อเวนเจอร์ส: มหาสงครามล้างจักรวาล ออกฉายในสหรัฐ วันที่ 25 เมษายน พ.ศ.​ 2561 ในระบบไอแมกซ์และ 3 มิติ โดยภาคต่อมีกำหนดออกฉายในสหรัฐ วันที่ 3 พฤษภาคม พ.ศ.​ 2562"
        avenger.descEng = "     Avengers: Infinity War is a 2018 American superhero film based on the Marvel Comics superhero team the Avengers, produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures. It is the sequel to 2012's The Avengers and 2015's Avengers: Age of Ultron, and the nineteenth film in the Marvel Cinematic Universe (MCU). The film is directed by Anthony and Joe Russo, written by Christopher Markus and Stephen McFeely, and features an ensemble cast including Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans, Scarlett Johansson, Benedict Cumberbatch, Don Cheadle, Tom Holland, Chadwick Boseman, Paul Bettany, Elizabeth Olsen, Anthony Mackie, Sebastian Stan, Danai Gurira, Letitia Wright, Dave Bautista, Zoe Saldana, Josh Brolin, and Chris Pratt. In Avengers: Infinity War, the Avengers and the Guardians of the Galaxy attempt to stop Thanos from amassing the all-powerful Infinity Stones."
        avenger.webUrl = "https://youtu.be/6ZfuNTqbHE8"
        avenger.coverpic = "cover"
        avenger.direct = "Director : Anthony Russo & Joe Russo"
        avenger.year = "Year : 2018"
        avenger.type = "Genre : Super Hero / Action"
        avenger.nameTh = "อเวนเจอร์ : มหาสงครามล้างจักรวาล"
        avenger.directTg = "ผู้กำกับ : Anthony Russo & Joe Russo"
        avenger.yearTh = "ปี : 2561"
        avenger.typeTh = "ประเภท : ซุปเปอร์ฮีโร่ / แอคชั่น"
        
        var fifty = MovieModel(name: "Fifty Shade: Freed")
        fifty.img = "fifty shade"
        fifty.descThai = "  Fifty Shades Freed  ภาพยนตร์ภาคต่อความสัมพันธ์ระหว่างแอนาสเตเชีย รับบทโดย ดาโกต้า จอนห์สัน และมิสเตอร์เกรย์ รับบทโดย เจมี่ ดอร์แน่น หลังจากภาคที่แล้วทั้งคู่ได้ตกลงแต่งงานกัน และในภาคนี้จะเป็นการออกไปท่องโลกฮันนีมูนให้แฟนหนังได้อิจฉาตาร้อนผ่าว รวมถึงล้วงลึกเข้าไปถึงอีกด้านของจิตใจของคุณเกรย์ ภาพยนตร์ฉายรอบปฐมทัศน์ในเทศกาลภาพยนตร์นานาชาติเบอร์ลิน ครั้งที่ 65 เมื่อวันที่ 11 กุมภาพันธ์ ค.ศ. 2015 และออกฉายเป็นการทั่วไปเมื่อวันที่ 13 กุมภาพันธ์ ค.ศ. 2015 โดยยูนิเวอร์แซลพิกเจอส์ ภาพยนตร์ประสบความสำเร็จในบ็อกซ์ออฟฟิศทันที โดยทำรายได้ได้มากกว่า 570 ล้านดอลลาร์สหรัฐ ปัจจุบันอยู่ในอันดับที่ 9 ของภาพยนตร์ที่ทำเงินสูงสุดของปี ค.ศ. 2015เอิร์นอิต เพลงประกอบภาพยนตร์ของ ฟิฟตีเชดส์ออฟเกรย์ ที่ขับร้องโดยเดอะวีกเอนด์ ได้รับรางวัลแกรมมี ประจำปี ค.ศ. 2016 ภาคต่อของ ฟิฟตีเชดส์ออฟเกรย์ คือ ฟิฟตีเชดส์ดาร์กเกอร์ (Fifty Shades Darker) และ ฟิฟตีเชดส์ฟรีด (Fifty Shades Freed) จะเข้าฉาย 10 กุมภาพันธ์ ค.ศ. 2017 และ 9 กุมภาพันธ์ ค.ศ. 2018 ตามลำดับ"
        fifty.descEng = "   Fifty Shades Freed is a 2018 American erotic romantic drama film directed by James Foley and written by Niall Leonard, and based on the novel of the same name by E. L. James. It is the third and final installment in the Fifty Shades film series, following Fifty Shades of Grey (2015) and Fifty Shades Darker (2017). The film stars Dakota Johnson and Jamie Dornan as Anastasia Steele and Christian Grey, respectively, and follows the couple as they marry, and must deal with Ana's former boss (Eric Johnson), who begins to stalk them. Principal photography on Fifty Shades Freed began simultaneously with Darker in February 2016, in Paris and Vancouver. The film was released in the United States on February 9, 2018, including a limited IMAX release. It grossed $368.3 million worldwide, making it the seventh highest-grossing film of 2018, but, like its two predecessors, received negative reviews, with criticism aimed at its screenplay and performances."
        fifty.webUrl = "https://youtu.be/nJCc5HRPxYA"
        fifty.coverpic = "cover1"
        fifty.direct = "Director : James Foley"
        fifty.year = "Year : 2018"
        fifty.type = "Genre : Dramatic"
        fifty.nameTh = "ฟิฟตี้เชดส์ฟรีด"
        fifty.directTg = "ผู้กำกับ : James Foley"
        fifty.yearTh = "ปี : 2561"
        fifty.typeTh = "ประเภท : ดราม่า"
        
        var Jurassic = MovieModel(name: "Jurassic World")
        Jurassic.img = "Jurasic World"
        Jurassic.descThai = "   จูราสสิค เวิลด์ (อังกฤษ: Jurassic World)  เป็นภาพยนตร์แนววิทยาศาสตร์ผจญภัย กำกับโดยโคลิน เทรวอร์โรว์ ออกฉายในกลางปี ค.ศ. 2015 เป็นภาพยนตร์ลำดับที่สี่ในชุด จูราสสิค พาร์ค บทภาพยนตร์เป็นผลงานการเขียนร่วมกันโดยริค แจฟฟา, อแมนดา ซิลเวอร์, ดีเรค คอนนอลลี และเทรวอร์โรว์ นำแสดงโดยคริส แพร็ตต์, ไบรซ์ ดัลลาส โฮเวิร์ด, วินเซนต์ ดิโอโนฟริโอ, ไท ซิมป์สกินส์, นิค โรบินสัน, โอมาร์ ไซ, บี ดี วองและอีร์ฟาน ข่านโดยวองเป็นนักแสดงเพียงคนเดียวที่เคยร่วมแสดงในภาพยนตร์ชุดจูราสสิค พาร์คมาก่อน ในภาพยนตร์เรื่องนี้ สวนสนุกไดโนเสาร์เปิดทำการเต็มรูปแบบบนเกาะอิสลานูบลาร์ (ที่เดียวกับในจูราสสิค พาร์ค ภาคแรก) แต่ก็เกิดเรื่องโกลาหลเมื่อไดโนเสาร์ตัดต่อพันธุกรรมอินดอมินัส เร็กซ์หลุดออกมาและออกอาละวาดไปทั่วสวน"
        Jurassic.descEng = "    Jurassic World is a 2015 American science fiction adventure film and the fourth installment of the Jurassic Park series, as well as the first film in a planned Jurassic World trilogy. The film was directed and co-written by Colin Trevorrow, produced by Frank Marshall and Patrick Crowley, and stars Chris Pratt and Bryce Dallas Howard. The production companies were Steven Spielberg's Amblin Entertainment, also responsible for the rest of the Jurassic Park franchise, and Thomas Tull's Legendary Pictures. Set 22 years after the events of Jurassic Park, Jurassic World takes place on the same fictional Central American island of Isla Nublar, off the Pacific coast of Costa Rica, where a theme park populated with cloned dinosaurs has operated for ten years. The park plunges into chaos when a genetically created dinosaur breaks loose and goes on a rampage across the island."
        Jurassic.webUrl = "https://youtu.be/1FJD7jZqZEk"
        Jurassic.coverpic = "cover2"
        Jurassic.direct = "Director : J.A. Bayona"
        Jurassic.year = "Year : 2018"
        Jurassic.type = "Genre : Action / Adventure"
        Jurassic.nameTh = "จูราสสิค เวิลด์: อาณาจักรล่มสลาย"
        Jurassic.directTg = "ผู้กำกับ : J. A. Bayona"
        Jurassic.yearTh = "ปี : 2561"
        Jurassic.typeTh = "ประเภท : แอคชั่น / ผจญภัย"
        
        var Kimi = MovieModel(name: "The 100th Love with You")
        Kimi.img = "kimi to 100"
        Kimi.descThai = "   The 100th Love with You (Kimi to 100 Kaime no Koi) 君と100回目の恋 หนังรักเรียกน้ำตาเรื่องนี้ถือเป็นการรับบทพระเอกเต็มตัวครั้งแรกของ เคนทาโร่ ซาคากุจิ และ เขียนบทโดย ซาโตมิ โอชิม่า ผู้เขียนบทซีรีส์สุดฮิต One Litre of tear การสร้างภาพยนตร์ในญี่ปุ่นส่วน ส่วนใหญ่จะสร้างจากการ์ตูนหรือนวนิยาย แต่ The 100th Love with You ต่างออกไปนี่คือหนังที่ ผู้กำกับ และ ผู้เขียนบท เขียนขึ้นมาจากไอเดีย เรื่องความรักของกลุ่มหนุ่มสาว ที่พวกเขารู้จักและนำมาพัฒนาต่อเป็นบทภาพยนตร์ ความสำเร็จหลังจากภาพยนตร์เข้าฉาย ทำให้ The 100th Love with You ถูกซื้อสิทธิ์ ไปสร้างเป็น มังงะและ นิยายตามลำดับ โดยเวอร์ชั่น มังงะ ถูกตีพิมพ์ ลง ในนิตยสาร Young Jump (Shueisha), ส่วน ฉบับนิยาย ถูกวางแผนที่จะเปิดให้อ่านฟรีทาง Website"
        Kimi.descEng = "    The 100th Love with You (Japanese: 君と100回目の恋 Hepburn: Kimi to 100 Kaime no Koi) is a Japanese romantic-fantasy film starring Miwa and Kentaro Sakaguchi, with original screenplay by Satomi Oshima and direction by Sho Tsukikawa.[4] It premiered in Japan on February 4, 2017, and was also released in other territories including China and South Korea. At that time, her childhood friend Riku Hasegawa (Kentaro Sakaguchi) tells her I will tell you a secret. I can turn back time. Aoi Hinata and Riku Hasegawa like each other, but never expressed their feelings. They share their feelings for each other and go back to one year earlier. They spend their time happily as girlfriend and boyfriend, but there is a big secret behind the time slip. In addition, July 27 is approaching."
        Kimi.webUrl = "https://youtu.be/c5JMFXCORn8"
        Kimi.coverpic = "cover3"
        Kimi.direct = "Director : Shô Tsukikawa"
        Kimi.year = "Year : 2017"
        Kimi.type = "Genre : Romance"
        Kimi.nameTh = "ย้อนรัก 100 ครั้ง ก็ยังเป็นเธอ"
        Kimi.directTg = "ผู้กำกับ : Shô Tsukikawa"
        Kimi.yearTh = "ปี : 2560"
        Kimi.typeTh = "ประเภท : โรแมนติก"
        allMovie.append(avenger)
        allMovie.append(fifty)
        allMovie.append(Jurassic)
        allMovie.append(Kimi)
        print(allMovie)
        
    }
  
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allMovie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell") as? MovieCell {
            cell.configCell(movie: allMovie[indexPath.row])
            if indexPath.row%2 == 0 {
                cell.backgroundColor = UIColor.white
                
            }
            else if indexPath.row%2 == 1 {
                cell.backgroundColor = UIColor.gray
            }
            return cell
            
        }
        
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(allMovie[indexPath.row].name!)
        performSegue(withIdentifier: "Nextpage", sender: allMovie[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Nextpage" {
            if let gameOverVC = segue.destination as?  View2Controller{
                var answer = (sender as? MovieModel)!
                gameOverVC.recieve = answer
            }
        }
    }
}

