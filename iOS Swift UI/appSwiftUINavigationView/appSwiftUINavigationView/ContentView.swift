import SwiftUI

// Estructura para Autos
struct Auto: Identifiable {
    let id = UUID()
    let nombre: String
    let especificaciones: String
    let imagenesPorColor: [String: [String]]
}

let colores: [String: Color] = [
    "Blanco": Color(hex: "#FFFFFF"),
    "Rojo": Color(hex: "#FF0000"),
    "Negro": Color(hex: "#000000"),
    "GrisClaro": Color(hex: "#EBEBEB"),
    "Vino": Color(hex: "#4C0002"),
    "AzulMetalico": Color(hex: "#0074B1"),
    "Amarillo": Color(hex: "#EFDD00")
]

// Extensión para crear colores desde hexadecimales
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 1  // omitimos el símbolo #
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}

// Arreglo de autos sin gradientes
private let listaAutos: [Auto] = [
    Auto(nombre: "Mitsubishi Mirage G4",
         especificaciones: """
         Barra estabilizadora frontal
         Alerón trasero al color de la carrocería
         Puertas delanteras con vidrios eléctricos
         Segunda fila con descansabrazos central y portavasos
         Aire acondicionado manual
         Pantalla táctil de 7", Bluetooth™ y reconocimiento de voz, AM/FM, Apple Carplay™ y Android Auto™
         Vidrios eléctricos en las puertas delanteras
         Viseras con espejo de vanidad y porta tickets para el conductor
         Controles al volante de audio y reconocimiento de voz
         """,
         imagenesPorColor: [
            "Blanco": ["W19_0_ELL_GLS", "W19_45_ELL_GLS", "W19_135_ELL_GLS", "W19_180_ELL_GLS", "W19_225_ELL_GLS", "W19_315_ELL_GLS"],
            "Rojo": ["P19_0_ELL_GLS", "P19_45_ELL_GLS", "P19_135_ELL_GLS", "P19_180_ELL_GLS", "P19_225_GLS", "P19_315_ELL_GLS"],
            "Negro": ["X08_0_ELL_GLS", "X08_45_ELL_GLS", "X08_135_ELL_GLS", "X08_180_ELL_GLS", "X08_225_ELL_GLS", "X08_315_ELL_GLS"],
            "AzulMetalico": ["T69_0_ELL_GLS Chico", "T69_45_ELL_GLS Chico", "T69_135_ELL_GLS Chico", "T69_180_ELL_GLS Chico", "T69_225_ELL_GLS Chico", "T69_315_ELL_GLS Chico"]
         ]),
    Auto(nombre: "Mitsubishi L200",
         especificaciones: """
            Rueda de disco (delantera y trasera): AL 18X7.5J 6-139.7 46 SIL UTA2
            Transfer Super select 4WD II
            Modos de manejo (7)
            Control activo en curva (control de freno)
            Diseño de faro: tipo B, tipo de bombilla: LED
            Espejo retrovisor exterior (tipo A) Tipo de plegado: Eléctrico
            Estribo lateral (tipo A)
            Tipo de dirección asistida: E.P.S (dirección asistida eléctrica)
            Panel de instrumentos digital de 7"
            Pantalla de información (LCD en color)
            control de crucero
            """,
         imagenesPorColor: [
            "Blanco":["W85_0_24TRITON-61_Side", "W85_45_24TRITON-61_Front_L", "W85_225_24TRITON-61_Rear_L"],
            "Rojo":["P63_0_24TRITON-61_Side", "P63_45_24TRITON-61_Front_L", "P63_225_24TRITON-61_Rear_L"],
            "Negro":["U28_0_24TRITON-61_Side", "U28_45_24TRITON-61_Front_L", "U28_225_24TRITON-61_Rear_L"]
         ]),
    Auto(nombre: "GMC CANYON DENALI",
         especificaciones: """
            Parrilla cromada con diseño escultural
            Escalones auxiliares cromados de 5”
            Rines de aluminio de 20” con diseño exclusivo
            Caja cubierta con Spray-on Bed Liner
            Molduras de poro abierto grabadas con láser y coordenadas del Monte Denali
            Asientos forrados en piel
            Asientos frontales calefactables y ventilables
            Volante calefactable
            Sistema de sonido con 6 bocinas Bose® Premium y amplificador
            Pantalla de infoentretenimiento de 11.3”
            Head-Up Display de 6.3”
            Control de crucero adaptativo
            “Underbody camera”: cámara de visión para la parte baja
            """,
         imagenesPorColor: [
            "Blanco":["DenaliB","DenaliB","DenaliB"],
            "Rojo":["DenaliR","DenaliR","DenaliR"],
            "Negro":["DenaliN","DenaliR","DenaliR"]
            ]),
    Auto(nombre: "Lincoln Navigator",
         especificaciones: """
            Conoce la innovación y confort de Lincoln Navigator, la camioneta para 7 u 8 pasajeros con tecnología intuitiva y poderoso rendimiento, caracterísitcas que garantizan una experiencia de conducción suave y emocionante, estableciendo nuevos estándares en el segmento de SUVs de lujo.
            Diseño: Gracias a los acabados premium y el diseño ergonómico de sus asientos, Lincoln Navigator ofrece una experiencia de confort sin igual. Su gran espacio interior, cabina silenciosa y lujosos materiales se complementan para garantizar un ambiente acogedor y relajante para sus 7 u 8 ocupantes.
            Tecnología: El Sistema Audio Revel® Ultima 3D integrado en Lincoln Navigator te sumerge en una experiencia musical inigualable. Con agudos cristalinos y graves profundos, junto a sus 28 bocinas estratégicamente ubicadas, el sonido de la SUV de lujo ofrece tonos acústicos en toda la cabina, creando un ambiente de concierto que estimula los sentidos.
            Potencia: Con un impresionante motor V6 Twin-Turbo de 3.5L que entrega 440 caballos de fuerza y 510 libras pie de Torque, Lincoln Navigator brinda el poder necesario para comenzar la aventura. Con la potencia necesaria para asegurar una experiencia de conducción suave y emocionante con capacidad de respuesta excepcional. Además, su Sistema de Arraste Clase IV brinda al conductor un control total, asegurando un rendimiento extraordinario.
            """,
         imagenesPorColor: [
            "Blanco":["1B","2B","3B","4B","5B"],
            "Vino":["1R","2R","3R","4R","5R"],
            "Negro":["1N","2N","3N","4N","5N"]
            ]),
    Auto(nombre: "Susuki Swift",
         especificaciones: """
            6 bolsas de aire: 2 bolsas de aire frontales, 2 bolsas de aire laterales y 2 bolsas de aire tipo cortina.
            Transmisión manual o automática de 6 velocidades
            Pantalla touch a color con sistema Bluetooth®, vínculo con Smartphones Apple CarPlayTM y Android AutoTM.
            Luz de tránsito diurno DRL. Luz de niebla
            Espejos plegables electrónicamente con luz direccional integrada
            Doble escape cromado
            Cluster a color con gráfica (disponible en las dos transmisiones) y sensor de estacionamiento trasero (disponible en TA)
            Sensores de estacionamiento traseros exclusivos para Transmisión Automática
            Distribución electrónica de frenado (EBD)
            Rendimiento de combustible en TA Boosterjet de 18.7 km/lt
            Motor 4 cilindros, 1.4 lt, Boosterjet
            Control electrónico de estabilidad ESC
            Frenos de disco delanteros y traseros.
            """,
         imagenesPorColor: [
            "Blanco":["SwiftB","SwiftB","SwiftB"],
            "Rojo":["SwiftR","SwiftR","SwiftR"],
            "Negro":["SwiftN","SwiftN","SwiftN"],
            "Amarillo":["SwiftA","SwiftA","SwiftA"]
            ])
] // FIN DEL ARREGLO Auto

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(listaAutos) { auto in
                NavigationLink(destination: DetallesView(auto: auto)) {
                    HStack {
                        AutoCirculoVista(auto: auto, color: "Blanco") // Mostramos la imagen del color blanco por defecto
                        Text(auto.nombre)
                            .font(.headline)
                    }
                    .padding(5)
                }
            }
            .navigationBarTitle("Autos")
        }
    }
}

struct DetallesView: View {
    let auto: Auto
    @State private var imagenIndex = 0
    @State private var colorSeleccionado = "Blanco"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [colores["Blanco"] ?? .white, colores["GrisClaro"] ?? .gray]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack(alignment: .leading) {
                        HStack {
                            AutoCirculoVista(auto: auto, color: colorSeleccionado).padding()
                            Text(auto.nombre)
                                .font(.largeTitle)
                                .bold()
                            Spacer()
                        }
                        .padding()
                    }
                }
                
                VStack {
                    ZStack {
                        if colorSeleccionado == "Blanco" {
                            LinearGradient(gradient: Gradient(colors: [colores["Blanco"] ?? .white, colores["GrisClaro"] ?? .gray]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                .frame(height: 300)
                                .cornerRadius(10)
                        } else {
                            LinearGradient(gradient: Gradient(colors: [colores["Blanco"] ?? .gray, colores[colorSeleccionado] ?? .gray]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                .frame(height: 300)
                                .cornerRadius(10)
                        }
                        
                        TabView(selection: $imagenIndex) {
                            ForEach(auto.imagenesPorColor[colorSeleccionado] ?? [], id: \.self) { imagen in
                                Image(imagen)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 200)
                                    .padding()
                                    .ignoresSafeArea()
                                    .tag(auto.imagenesPorColor[colorSeleccionado]?.firstIndex(of: imagen) ?? 0)
                            }
                        }
                        .tabViewStyle(PageTabViewStyle())
                    }
                    .padding(.top)
                    
                    HStack {
                        ForEach(auto.imagenesPorColor.keys.sorted(), id: \.self) { color in
                            Button(action: {
                                colorSeleccionado = color
                                // Mantener el índice actual en la nueva colección
                                imagenIndex = min(imagenIndex, auto.imagenesPorColor[colorSeleccionado]?.count ?? 1 - 1)
                            }) {
                                Circle()
                                    .fill(colores[color] ?? .gray)
                                    .frame(width: color == colorSeleccionado ? 40 : 30, height: color == colorSeleccionado ? 40 : 30) // Ajuste del tamaño
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.gray, lineWidth: 3.5))
                                    .overlay(Circle().stroke(Color.white, lineWidth: color == colorSeleccionado ? 3 : 0)) // Ajuste del borde
                            }
                        }
                    }
                    .padding(.top)
                }
                .padding()
                
                VStack(alignment: .leading) {
                    Text("Especificaciones")
                        .font(.title)
                        .padding(.bottom, 5)
                    
                    ForEach(auto.especificaciones.components(separatedBy: "\n"), id: \.self) { especificacion in
                        Text("• \(especificacion)")
                            .font(.system(size: 18, weight: .regular, design: .default)) // Usar la fuente system
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.bottom, 2)
                    }
                }
                .padding()
                
                Spacer()
            }
            .navigationBarTitle(Text(""), displayMode: .inline)
            .onChange(of: imagenIndex) { newIndex in
                // Ajustar para el desplazamiento circular
                let totalCount = auto.imagenesPorColor[colorSeleccionado]?.count ?? 1
                if newIndex < 0 {
                    imagenIndex = totalCount - 1
                } else if newIndex >= totalCount {
                    imagenIndex = 0
                }
            }
        }
    }
}

struct AutoCirculoVista: View {
    let auto: Auto
    let color: String
    
    var body: some View {
        ZStack {
            if let imagenes = auto.imagenesPorColor[color], imagenes.count >= 3 {
                Image(imagenes[2])
                    .resizable()
                    .scaledToFit()
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray, lineWidth: 3))
            } else {
                // Si no hay al menos tres imágenes, mostrar una imagen de marcador de posición o texto
                Text("No Img")
                    .font(.largeTitle)
                    .frame(width: 65, height: 65)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 3))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
