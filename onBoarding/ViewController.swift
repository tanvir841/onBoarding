//
//  ViewController.swift
//  onBoarding
//
//  Created by Tanvir on 1/6/20.
//  Copyright © 2020 tanvir841. All rights reserved.
//

import UIKit
import PaperOnboarding


class ViewController: UIViewController, PaperOnboardingDataSource, PaperOnboardingDelegate {

    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var onBoardingView: OnboardingView!
    override func viewDidLoad() {
        super.viewDidLoad()
        onBoardingView.dataSource = self
        onBoardingView.delegate = self
          
        }
    
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
       
        let car  = UIImage(named: "car") as UIImage?
        let bus  = UIImage(named: "bus") as UIImage?
        let plane = UIImage(named: "plane") as UIImage?
        let backgroundColorone = UIColor(displayP3Red: 217/255, green: 72/255, blue: 89/255, alpha: 1)
        let backgroundColor2 = UIColor(displayP3Red: 106/255, green: 166/255, blue: 211/255, alpha: 1)
        let backgroundColor3 = UIColor(displayP3Red: 168/255, green: 200/255, blue: 78/255, alpha: 1)
        
        let titleFont = UIFont(name: "AvenirNext-Bold", size: 24)
        let DescriptionFont = UIFont(name: "AvenirNext-Regular", size: 18)
        
         return [
            OnboardingItemInfo(informationImage: car!,
                                  title: "car",
                                  description: "This is a car",
                                  pageIcon: car!,
                                  color: backgroundColorone,
                                  titleColor: UIColor.white,
                                  descriptionColor: UIColor.white,
                                  titleFont: titleFont!,
                                  descriptionFont: DescriptionFont!),
            
            OnboardingItemInfo(informationImage: bus!,
                                    title: "bus",
                                    description: "This is a bus",
                                    pageIcon: bus!,
                                    color: backgroundColor2,
                                    titleColor: UIColor.white,
                                    descriptionColor: UIColor.white,
                                    titleFont: titleFont!,
                                    descriptionFont: DescriptionFont!),
            
            OnboardingItemInfo(informationImage: plane!,
                                      title: "title",
                                      description: "description",
                                      pageIcon: plane!,
                                      color: backgroundColor3,
                                      titleColor: UIColor.white,
                                      descriptionColor: UIColor.white,
                                      titleFont: titleFont!,
                                      descriptionFont: DescriptionFont!),
            
            ][index]
//        return [(imageView, "Car", "This is a car",".", backgroundColorone, UIColor.white, UIColor.white,titleFont, DescriptionFont)][index]
    }
    func onboardingItemsCount() -> Int {
        return 3
    }
    
//    func onboardingConfigurationItem(_: OnboardingContentViewItem, index _: Int) {
//    }
    func onboardingWillTransitonToIndex(_: Int) {
        if  {
            UIView.animate(withDuration: 0.2, animations: {self.start.alpha = 0})
        }
    }
    func onboardingDidTransitonToIndex(_: Int) {
         if (index == 2) {
            UIView.animate(withDuration: 0.4, animations: {self.start.alpha = 1})
    }
}



}
