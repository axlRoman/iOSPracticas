//
//  ViewController.swift
//  appSceneKitMoverLuzCamara
//
//  Created by Axel Roman on 03/06/24.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

   @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var segmentedLuces: UISegmentedControl!
    
    
    @IBOutlet weak var sliderLuzX: UISlider!
    @IBOutlet weak var sliderLuzY: UISlider!
    @IBOutlet weak var sliderLuzZ: UISlider!
    
    @IBOutlet weak var sliderCamaraX: UISlider!
    @IBOutlet weak var sliderCamaraY: UISlider!
    @IBOutlet weak var sliderCamaraZ: UISlider!
    
    var tipoLuz : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tipoLuz = "ambient"
        dibujaObjeto3D()
    }
    
   
    @IBAction func sliderLuzX(_ sender: UISlider) {
        sliderLuzX.value = sender.value
        dibujaObjeto3D()
    }
    
    @IBAction func sliderLuzY(_ sender: UISlider) {
        sliderLuzY.value = sender.value
        dibujaObjeto3D()
    }
    @IBAction func sliderLuzZ(_ sender: UISlider) {
        sliderLuzZ.value = sender.value
        dibujaObjeto3D()
    }
    
    
    @IBAction func SliderCamaraX(_ sender: UISlider) {
        sliderCamaraX.value = sender.value
        dibujaObjeto3D()
    }
    @IBAction func SliderCamaraY(_ sender: UISlider) {
        sliderCamaraY.value = sender.value
        dibujaObjeto3D()
    }
    @IBAction func SliderCamaraZ(_ sender: UISlider) {
        sliderCamaraZ.value = sender.value
        dibujaObjeto3D()
    }
    
    
    @IBAction func segmentoTipoLuz(_ sender: UISegmentedControl) {
        let indice : Int = segmentedLuces.selectedSegmentIndex
        switch indice {
        case 0:
            tipoLuz = "ambient"
            dibujaObjeto3D()
        case 1:
            tipoLuz = "directional"
            dibujaObjeto3D()
        case 2:
            tipoLuz = "omni"
            dibujaObjeto3D()
        case 3:
            tipoLuz = "spot"
            dibujaObjeto3D()
        default:
            tipoLuz = "directional"
            dibujaObjeto3D()
            
            //Agregar los 3 tipos de luz que faltan
        }
 
    }
    
    func dibujaObjeto3D() {
        //CREAMOSLAVISTA DE LAESCENA
        
        let sceneView = SCNView(frame: self.imageView.frame)
        self.imageView.addSubview(sceneView)
        //CREAMOS LA ESCENA
        let scene = SCNScene()
        sceneView.scene = scene
        //CREAMOS LA CAMARA
        let camara = SCNCamera()
        let camaraNodo = SCNNode()
        camaraNodo.camera = camara
         //VISTA DE FRENTE
        camaraNodo.position = SCNVector3(self.sliderCamaraX.value, self.sliderCamaraY.value, self.sliderCamaraZ.value)
        
        //CREAMOS LA LUZ PARA MANEJAR DIFERENTES TIPOS
        let luz = SCNLight()
//        luz.type = SCNLight.LightType.ambient
        luz.type = SCNLight.LightType(rawValue: tipoLuz!)
        //HACER INTERACTIVO LOS MOVIMIENTOS DE LOS ANGULOS
        luz.spotInnerAngle = 30.0//INTERACTIVOS
        luz.spotOuterAngle = 70.0//INTERACTIVOS
        
        luz.castsShadow = true;
        //Creamos nodo para la luz
        let luzNodo = SCNNode()
        luzNodo.light = luz
        
        luzNodo.position = SCNVector3(x: sliderLuzX.value, y: sliderLuzY.value, z: sliderLuzZ.value)
        
        //Cubo
        let geometriaCubo = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.1)
        let cuboNodo = SCNNode(geometry: geometriaCubo)
        let constraint = SCNLookAtConstraint(target: cuboNodo)
        constraint.isGimbalLockEnabled = true
        camaraNodo.constraints = [constraint]
        
        luzNodo.constraints = [constraint]
        
        //PLANO O PISO
        let planoGeometria = SCNPlane(width: 50/3, height: 50/3)
        let planoNodo = SCNNode(geometry: planoGeometria)
        planoNodo.eulerAngles = SCNVector3(GLKMathDegreesToRadians(-90),0.0,0.0)
        //valores de los angulos interactivos
        planoNodo.position = SCNVector3(x: 0.0, y: -0.5, z: 0.0)
        
        //Color del Cubo
        //AVANZAR A LOS PROYECTOS PARA MAÑANA
        //REVISION DE LOS AVANCES DE LOS PROYECTOS
        //CURVAS DE BEZIER
        //PAGINA KODECO
        
        let materialCubo = SCNMaterial()
        materialCubo.diffuse.contents = UIColor.systemRed
//        materialCubo.metalness.contents = UIColor.systemRed
//        materialCubo.roughness.contents = UIColor.systemRed
        geometriaCubo.materials = [materialCubo]
        cuboNodo.position = SCNVector3(x: 0.5, y: 0, z: 0)
        
        //Dibujar una Espefra
        let sphereGeometry = SCNSphere(radius: 0.5)
        let sphereNodo = SCNNode(geometry: sphereGeometry)
        sphereGeometry.firstMaterial?.diffuse.contents = UIColor.systemIndigo
        sphereNodo.position = SCNVector3(x: 2.0, y: 0.0, z: 0.0)
        
        //COLOR Y MATERIAL PARA EL PLANO
        let materialPlano = SCNMaterial()
        materialPlano.diffuse.contents = UIColor.yellow
        
        //AGREGAMOS LOS NODOS
        scene.rootNode.addChildNode(luzNodo)
        scene.rootNode.addChildNode(camaraNodo)
        scene.rootNode.addChildNode(cuboNodo)
        scene.rootNode.addChildNode(sphereNodo)
        scene.rootNode.addChildNode(planoNodo)
    }

}

