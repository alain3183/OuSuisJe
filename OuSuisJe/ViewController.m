//
//  ViewController.m
//  OuSuisJe
//
//  Created by Alain Malenfant on 11/10/2013.
//  Copyright (c) 2013 Alain Malenfant. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void) locationManager: (CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    _maPosition.text = [newLocation description];
}

- (void) locationManager: (CLLocationManager *)manager didFailWithError:(NSError *)error
{
    _maPosition.text = [error description];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // initialisation de l'objet locationManager
    locationManager = [[CLLocationManager alloc]init];
    // pour voir si le service de géolocalisation est disponible et activé. Ex. en mode "Avion" est activé ou si les périphériques de géolocalisation ne sont pas en mesure de fournir des informations, il est inutile de chercher à en obtenir
    if ([CLLocationManager locationServicesEnabled])
    {
        // affecte la valeur self à la propriété delegate de l'objet locationManager afin d'indiquer que les événements relatifs à la géolocalisation doivent être traités dans VC.m
        locationManager.delegate = self;
        // précise la précision désirée
        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        // définit la distance de déplacement minimale du device avant qu'une MAJ de la position ne soit effectuée, il faudra que le device se déplace de 100 mètres pour qu'une fotification de changement ne soit faite
        locationManager.distanceFilter = 100.0f;
        // éxécute la méthode startUpdatingLocation, en d'autres termes, elle demande au device de MAJ de façon régulière ses coordonnées géographiques.
        [locationManager startUpdatingLocation];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
