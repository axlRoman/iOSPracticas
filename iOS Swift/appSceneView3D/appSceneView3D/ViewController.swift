//
//  ViewController.swift
//  appSceneView3D
//
//  Created by Axel Roman on 31/05/24.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let sceneView = SCNView(frame: self.view.frame)
        sceneView.backgroundColor = UIColor.magenta
        self.view.addSubview(sceneView)
        let scene = SCNScene()
        let camara = SCNCamera()
        let camaraNodo = SCNNode()
        camaraNodo.camera = camara
        camaraNodo.position = SCNVector3(x:3.0, y:3.0, z:3.0)
        sceneView.scene = scene

        
        //DEFINIR LA LUZ
        let luz = SCNLight()
        luz.type = SCNLight.LightType.omni
        let luzNodo = SCNNode()
        luzNodo.light = luz
        luzNodo.position = SCNVector3(x: 1.0, y: 1.0, z: 1.5)
        
        //DEFINIR EL CUBO
        let cubo = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.1)
        cubo.firstMaterial?.diffuse.contents = UIColor.red
        let cuboNodo = SCNNode(geometry: cubo)
        
        let constraint = SCNLookAtConstraint(target: cuboNodo)
        constraint.isGimbalLockEnabled = true
        camaraNodo.constraints = [constraint]
        
        scene.rootNode.addChildNode(luzNodo)
        scene.rootNode.addChildNode(camaraNodo)
        scene.rootNode.addChildNode(cuboNodo)
        
    }


}

