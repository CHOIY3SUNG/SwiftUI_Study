//
//  UserisWhere.swift
//  Image_Ex
//
//  Created by Y3SUNG on 2022/07/18.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManger = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // 델리게이트 설정
        locationManger.delegate = self
        // 거리 정확도 설정
        locationManger.desiredAccuracy = kCLLocationAccuracyBest
        // 사용자에게 허용 받기 alert 띄우기
        locationManger.requestWhenInUseAuthorization()
  
        // 아이폰 설정에서의 위치 서비스가 켜진 상태라면
        if CLLocationManager.locationServicesEnabled() {
            print("위치 서비스 On 상태")
         locationManger.startUpdatingLocation() //위치 정보 받아오기 시작
        } else {
            print("위치 서비스 Off 상태")
        }
        
    }
    
    // 위치 정보 계속 업데이트 -> 위도 경도 받아옴
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("didUpdateLocations")
        if let location = locations.first {
            print("위도: \(location.coordinate.latitude)")
            print("경도: \(location.coordinate.longitude)")
        }
    }
    
    // 위도 경도 받아오기 에러
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }

}
