//
//  ViewController.h
//  OuSuisJe
//
//  Created by Alain Malenfant on 11/10/2013.
//  Copyright (c) 2013 Alain Malenfant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController
// Ajout du protocole
<CLLocationManagerDelegate>
// Variable d'instance
{
    CLLocationManager* locationManager;
}

@property (weak, nonatomic) IBOutlet UILabel *maPosition;
@end
