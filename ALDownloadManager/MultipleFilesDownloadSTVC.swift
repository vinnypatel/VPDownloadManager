//
//  MultipleFilesDownloadSTVC.swift
//  ALDownloadManager
//
//  Created by 周逸文 on 2017/11/8.
//  Copyright © 2017年 YV. All rights reserved.
//

import UIKit

class MultipleFilesDownloadSTVC: UIViewController ,UITableViewDataSource,UITableViewDelegate {

    let testUrl: String = "http://song.paohaile.com/30854966.mp3"
    
    var downloadurls = [
        "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/af/83/79/af837916-90f9-d503-bf08-13ffb9957f21/mzaf_16662673119862695322.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/7f/96/e3/7f96e328-8b1a-aa6c-341c-c08e4e14ffa6/mzaf_2003481681392848821.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/f4/ff/9b/f4ff9b15-ab45-3d93-cb50-1de315048571/mzaf_11974621322437239342.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/15/dd/af/15ddaf7c-38b3-1ff2-9340-cdee92f2ea1c/mzaf_9483327671401646653.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/00/0a/21/000a2130-461f-91c6-0579-37e8cb0acfcc/mzaf_10182232311755652498.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/a2/70/89/a270891d-b2c4-4de0-2e9c-3c856e3abfa0/mzaf_10951524957573567651.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/0a/4e/eb/0a4eeb42-a762-64e7-2f94-f66411f6efb0/mzaf_4074590387976854549.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/d3/a2/bf/d3a2bfad-9898-659c-8dbd-52e6be095648/mzaf_11874894466953547035.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/5b/d2/2c/5bd22c76-37ea-331d-3219-deb987384327/mzaf_18136162929272266431.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/6e/c6/02/6ec602b1-a1a7-32db-bae4-1f699afa03af/mzaf_11904210145283577063.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/c6/19/26/c61926f8-b2d7-646c-0780-8e3cb5d6d09d/mzaf_6094229333025953666.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/d3/f8/8c/d3f88c28-34d1-b095-24e2-7abf8d97bd38/mzaf_9840247650053476498.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/28/18/9c/28189c6f-bca9-27bb-98bb-11f98f771acc/mzaf_11540048934676893441.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/52/a6/e0/52a6e08b-0de9-f5d1-da8d-aeec58551205/mzaf_17245943348716049924.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/b5/61/6a/b5616a9d-f78d-85d8-4b57-2ced732c0e9d/mzaf_18387448694790429430.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/d5/fe/47/d5fe47d6-3e4e-07b2-81a5-f168ae668dc3/mzaf_18047644814172888799.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/79/65/65/79656522-b652-0023-96bf-6cfef059811d/mzaf_3353417325371928036.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/32/9a/29/329a29ae-d9cc-1035-8e4b-923b233a8b9c/mzaf_4299733552073430836.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/40/7e/ce/407ece4b-8554-e6bc-f593-6e3a84c9ad59/mzaf_13008807196902725435.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview123/v4/67/41/26/674126dd-b732-25eb-9457-2d7ae2705aeb/mzaf_4440657346355154417.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/31/4b/86/314b86b5-e933-e980-ad23-8a9d00f797c5/mzaf_1088762633239578188.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/ec/3f/e9/ec3fe9cf-c30a-4bde-af60-98e6d2c1038f/mzaf_2668720893361033445.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/16/94/89/16948900-c1db-34d2-6469-75fd0db27844/mzaf_2966440723902620515.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/18/27/81/182781e6-4616-24a1-a8ca-a1b49e2b20d2/mzaf_10958187446566319972.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/c4/86/20/c48620be-06f5-de0e-f0d9-b056530460b7/mzaf_18214447994890379430.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview118/v4/05/7a/57/057a57f6-b4b8-894c-ecb9-22c2c9fb033c/mzaf_3194862281833123344.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/33/f4/0e/33f40e04-e00a-5d8e-a955-c9f944954d7f/mzaf_3119256793571984314.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/0f/84/23/0f842352-a1ef-fb96-c080-7d0bcfe2bfb2/mzaf_9651489197342086007.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/94/d9/d3/94d9d391-9cda-44c5-e0cc-29c19ce726ff/mzaf_2283643870513625978.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/50/1c/f3/501cf31f-d485-4265-bf60-3f49a093f4b0/mzaf_1212178437470660077.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview118/v4/3a/91/4d/3a914d36-1788-7b0a-7056-6fc0d3cff5db/mzaf_9188391604146671532.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview123/v4/7c/08/64/7c0864c4-5537-b6e2-83e5-88c305227feb/mzaf_9720800649348735514.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/91/9a/a9/919aa963-84c3-d093-26ac-4bd005acd33a/mzaf_17452576630232167446.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview113/v4/f3/ba/86/f3ba86d5-c3f4-a97b-7f0b-11038b8b3786/mzaf_9492564240881258998.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview123/v4/70/20/36/7020367d-0f02-a003-9370-18d50f399fe8/mzaf_9007087248151907113.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/7a/83/cf/7a83cf13-50a0-cb22-2237-5e094d912557/mzaf_3190938978778535120.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/a7/f7/ca/a7f7ca2e-3b61-a8a5-ae9a-0edd741277f7/mzaf_7184673063640989574.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/5b/77/fa/5b77fac2-0418-4b84-d174-8b67f37350ce/mzaf_17965673528003005703.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/e0/e6/cf/e0e6cfa4-a832-5cd6-f9e4-95bcb1df6e0f/mzaf_8835364651387824252.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/c7/13/b8/c713b844-d02e-94bb-f672-2d9d866890fa/mzaf_14996345843172747692.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview118/v4/18/91/4c/18914c25-7a2b-5243-8712-efa6a2314163/mzaf_6046898754872320160.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/0f/e3/51/0fe35152-dca8-9355-ff25-7a660c64df1d/mzaf_4141717811232700655.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/aa/d0/0d/aad00d94-7bfa-7c25-8ebe-18a07f02e1ed/mzaf_5762770271047264369.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/0d/1c/65/0d1c65d2-fabf-27b2-b4b2-01cdbd993477/mzaf_7975366357460653470.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/94/1a/2d/941a2df9-43f3-8567-3fbf-032e79bbb747/mzaf_9483322909730679868.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/2d/e6/ae/2de6ae9b-79d9-76b9-dc7f-c2586145ae19/mzaf_2881996314373691224.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/da/d3/e6/dad3e6dd-e395-453a-ae8a-e842b9b6187c/mzaf_15941775929240540728.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/6f/ad/1b/6fad1bc5-7167-6daf-c1a9-3a0eef70bb27/mzaf_6708244363020007214.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/82/64/5a/82645a43-05b1-7511-466d-84e73791aa48/mzaf_14693158948007563941.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/ca/29/26/ca2926e3-e09a-66ac-a08f-6430e710ba3b/mzaf_16834082860694025434.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/0f/e3/51/0fe35152-dca8-9355-ff25-7a660c64df1d/mzaf_4141717811232700655.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview118/v4/18/91/4c/18914c25-7a2b-5243-8712-efa6a2314163/mzaf_6046898754872320160.plus.aac.p.m4a",
    "https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/c7/13/b8/c713b844-d02e-94bb-f672-2d9d866890fa/mzaf_14996345843172747692.plus.aac.p.m4a"]
//        ["http://file-examples.com/wp-content/uploads/2017/04/file_example_MP4_1920_18MG.mp4",
//                        "http://oss.onezen.cc/video/test-download-xs-max.mp4",
//                        "http://api.onezen.cc/video/301/1.mp4",
//                        "http://api.onezen.cc/video/404/1.mp4",
//                        "https://vd1.bdstatic.com/mda-hiqmm8s10vww26sx/mda-hiqmm8s10vww26sx.mp4?playlist=%5B%22hd%22%5D&auth_key=1506158514-0-0-6cde713ec6e6a15bd856fbb4f2564658&bcevod_channel=searchbox_feed",
//                        "https://vd1.bdstatic.com/mda-hez17qvhyauh9ybf/mda-hez17qvhyauh9ybf.mp4?auth_key=1506158741-0-0-d0a39ee4b472f0af492fed6d20396697&bcevod_channel=searchbox_feed"]
    let alTableView: UITableView = {
        let tabv = UITableView(frame: CGRect.zero, style: .plain)
        tabv.rowHeight = 80
        return tabv
    }()
    
    let alToolView: UIView = {
        let tView = UIView()
        tView.backgroundColor = UIColor(red: 245/255, green:  245/255, blue:  245/255, alpha: 1)
        return tView
    }()
    //暂停或恢复所有
    let suspendAllBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("全部下载", for: .normal)
        btn.setTitle("全部暂停", for: .selected)
        btn.setTitleColor(UIColor.black, for: .normal)
        return btn
    }()
    //顺序下载
    let sequentialAllBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("顺序下载", for: .normal)
        btn.setTitle("同时下载", for:  .selected)
        btn.setTitleColor(UIColor.black, for: .normal)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func initUI() {
        self.view.backgroundColor = UIColor.white
        addNavRightItem()
        alTableView.frame = CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight-60)
        alTableView.delegate = self
        alTableView.dataSource = self
        alTableView.register(DownloadProgressCell.self, forCellReuseIdentifier: "DownloadProgressCell")
        self.view.addSubview(alTableView)
        createToolView()
    }
    func addNavRightItem() {
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 0, y: 0, width: 70, height: 35)
        btn.setTitle("添加", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.addTarget(self, action: #selector(navRightItemClicked), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: btn)
    }
    func createToolView() {
        alToolView.frame = CGRect(x: 0, y: ScreenHeight-60, width: ScreenWidth, height: 60)
        suspendAllBtn.frame = CGRect(x: 0, y: 0, width: ScreenWidth/2, height: 60)
        sequentialAllBtn.frame = CGRect(x: ScreenWidth/2, y: 0, width: ScreenWidth/2, height: 60)
        suspendAllBtn.addTarget(self, action: #selector(MultipleFilesDownloadSTVC.didsuspendAllBtn), for: .touchUpInside)
        sequentialAllBtn.addTarget(self, action: #selector(MultipleFilesDownloadSTVC.didsequentialAllBtn), for: .touchUpInside)
        self.view.addSubview(alToolView)
        alToolView.addSubview(suspendAllBtn)
        alToolView.addSubview(sequentialAllBtn)
    }
    @objc func navRightItemClicked()  {
        inputUrl()
    }
    
    //暂停或恢复所有
    @objc func didsuspendAllBtn() {
        if self.suspendAllBtn.isSelected == true {
            self.suspendAllBtn.isSelected = false
            ALDownloadManager.shared.suspendAll()
        }else{
            self.suspendAllBtn.isSelected = true
            ALDownloadManager.shared.resumeAll()
        }
    }
    //顺序下载
    @objc func didsequentialAllBtn() {
        if sequentialAllBtn.isSelected == true {
            sequentialAllBtn.isSelected = false
            ALDownloadManager.shared.changeDownloadState()
        }else{
            sequentialAllBtn.isSelected = true
            ALDownloadManager.shared.changeWaitState(completeClose: nil)
        }
    }
    
    func inputUrl() {
        let alertVC = UIAlertController(title: "新建下载任务", message: nil, preferredStyle: UIAlertController.Style.alert)
        alertVC.addTextField { (tf) in
            tf.placeholder = "\(self.testUrl)"
        }
        let acSure = UIAlertAction(title: "下载", style: .default) { (sureact) in
            if  let downloadUrl = alertVC.textFields?.first?.text , downloadUrl != ""{
                if  let info =   ALDownloadManager.shared.download(url: downloadUrl), let url = info.downloadurl{
                    self.downloadurls.append(url)
                    self.alTableView.reloadData()
                }else{
                    self.alTip()
                }
            }else{
                if let request =   ALDownloadManager.shared.download(url: self.testUrl) {
                    print("\(request)")
                    self.downloadurls.append(self.testUrl)
                    self.alTableView.reloadData()
                }else{
                    self.alTip()
                }
            }
        }
        let acCancel = UIAlertAction(title: "取消", style: .cancel) { (sureact) in }
        alertVC.addAction(acSure)
        alertVC.addAction(acCancel)
        self.present(alertVC, animated: true, completion: nil)
    }
    
    func alTip() {
        let alertVC = UIAlertController(title: "请勿重复下载", message: nil, preferredStyle: UIAlertController.Style.alert)
        let acCancel = UIAlertAction(title: "知道了", style: .cancel) { (sureact) in }
        alertVC.addAction(acCancel)
        self.present(alertVC, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return downloadurls.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Identifier = "DownloadProgressCell\(indexPath.row)"
        if  let cell  = tableView.dequeueReusableCell(withIdentifier: Identifier) as? DownloadProgressCell {
            cell.downloadurl = downloadurls[indexPath.row]
            return   cell
        }else{
            tableView.register(DownloadProgressCell.self, forCellReuseIdentifier: Identifier)
            let cell  = tableView.dequeueReusableCell(withIdentifier: Identifier) as! DownloadProgressCell
            cell.downloadurl = downloadurls[indexPath.row]
            return   cell
        }
    }
}
