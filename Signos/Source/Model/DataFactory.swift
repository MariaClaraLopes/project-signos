import Foundation

struct DataFactory {
    static func registerSignos() -> [Signos]{
        let signo: [Signos] =
            [Signos(name:"Aquário" , descrition: "teste", imageURL: "http teste"), Signos(name:"Peixes" , descrition: "teste", imageURL: "http teste"), Signos(name:"Áries" , descrition: "teste", imageURL: "http teste"), Signos(name:"Touro" , descrition: "teste", imageURL: "http teste"), Signos(name:"Gêmeos" , descrition: "teste", imageURL: "http teste"), Signos(name:"Câncer" , descrition: "teste", imageURL: "http teste"), Signos(name:"Leão" , descrition: "teste", imageURL: "http teste"), Signos(name:"Virgem" , descrition: "teste", imageURL: "http teste"), Signos(name:"Libra" , descrition: "teste", imageURL: "http teste"), Signos(name:"Escorpião" , descrition: "teste", imageURL: "http teste"), Signos(name:"Sagitário" , descrition: "teste", imageURL: "http teste"), Signos(name:"Capricornio" , descrition: "teste", imageURL: "http teste")]
        return signo
    }
    
}
