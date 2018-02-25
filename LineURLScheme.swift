    /// 分享訊息到 Line
    ///
    /// - Parameter sender: _
    @IBAction func pressShareButton(_ sender: UIButton) {
        let message: String! = "法蘭克： 大家午安"
        
        // 將訊息編碼成 UTF-8 格式
        let encodeMessage = message.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)
        
        let lineURL = URL(string: "line://msg/text/" + encodeMessage!) // 分享訊息的 URL Scheme
        
        if UIApplication.shared.canOpenURL(lineURL!) {
            UIApplication.shared.open(lineURL!, options: [:], completionHandler: nil)
        } else {
            // 若沒安裝 Line 則導到 App Store(id443904275 為 Line App 的 ID)
            let lineURL = URL(string: "itms-apps://itunes.apple.com/app/id443904275")!
            UIApplication.shared.open(lineURL, options: [:], completionHandler: nil)
        }
    }