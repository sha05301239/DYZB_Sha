//
//  MainTabbarVC.swift
//  DouYuZB
//
//  Created by 再出发 on 2018/8/23.
//  Copyright © 2018年 sha xianding. All rights reserved.
//

import UIKit

class MainTabbarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        self.addChildViewController(UIViewController())
        addChileVc(storyName: "Home");
        addChileVc(storyName: "Live");
        addChileVc(storyName: "Follow");
        addChileVc(storyName: "Me");

    }

    //私有方法
    private func addChileVc(storyName : String){
        //1.通过storyboard获取控制器
        let childVC = UIStoryboard(name:storyName, bundle: nil).instantiateInitialViewController()!
        //将VC添加进来
        addChildViewController(childVC);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
