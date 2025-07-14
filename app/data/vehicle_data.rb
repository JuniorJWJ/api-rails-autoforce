module VehicleData
  def self.all
    [
      {
        id: 1,
        year: "2023",
        brand: "Chevrolet",
        model: "Onix",
        subtitle: "1.0 TURBO FLEX PLUS AUTOMÁTICO",
        transmission: "AUTOMÁTICO",
        mileage: "5.000 KM",
        fuel: "FLEX",
        price: "R$ 92.500,00",
        images_url: [
          "car6.jpg",
          "car2.jpg",
          "car3.jpg",
          "car4.jpg",
          "car5.jpg"
        ],
        promotion: true,
        color: "Prata",  
        plate_end: "7",  
        badges: [
          { text: "TURBO", type: "turbo" }
        ]
      },
      {
        id: 2,
        year: "2022",
        brand: "Volkswagen",
        model: "Nivus",
        subtitle: "1.0 200 TSI COMFORTLINE",
        transmission: "AUTOMÁTICO",
        mileage: "18.000 KM",
        fuel: "FLEX",
        price: "R$ 112.900,00",
        images_url: [
          "car1.jpg",
          "car2.jpg",
          "car3.jpg",
          "car4.jpg",
          "car5.jpg"
        ],
        promotion: false,
        color: "Prata",  
        plate_end: "5",  
        badges: []
      },
      {
        id: 3,
        year: "2021",
        brand: "Toyota",
        model: "Corolla Cross",
        subtitle: "2.0 VVT-IE FLEX XR",
        transmission: "AUTOMÁTICO",
        mileage: "25.000 KM",
        fuel: "FLEX",
        price: "R$ 139.990,00",
        images_url: [
          "car7.jpg",
          "car2.jpg",
          "car3.jpg",
          "car4.jpg",
          "car5.jpg"
        ],
        promotion: false,
        color: "Branco",  
        plate_end: "3",  
        badges: []
      },
      {
        id: 4,
        year: "2020",
        brand: "Honda",
        model: "Civic",
        subtitle: "2.0 SPORT FLEXONE AUTOMÁTICO",
        transmission: "AUTOMÁTICO",
        mileage: "40.000 KM",
        fuel: "FLEX",
        price: "R$ 109.990,00",
        images_url: [
          "car8.jpg",
          "car2.jpg",
          "car3.jpg",
          "car4.jpg",
          "car5.jpg"
        ],
        promotion: false,
        color: "Preto",  
        plate_end: "2",  
        badges: [
          { text: "TOP", type: "top" }
        ]
      },
      {
        id: 5,
        year: "2022",
        brand: "Fiat",
        model: "Pulse",
        subtitle: "1.0 TURBO 200 FLEX IMPETUS CVT",
        transmission: "AUTOMÁTICO",
        mileage: "12.000 KM",
        fuel: "FLEX",
        price: "R$ 114.990,00",
        images_url: [
          "car1.jpg",
          "car2.jpg",
          "car3.jpg",
          "car4.jpg",
          "car5.jpg"
        ],
        promotion: false,
        color: "Vermelho",  
        plate_end: "4",  
        badges: [
          { text: "TURBO", type: "turbo" }
        ]
      },
      {
        id: 6,
        year: "2023",
        brand: "Renault",
        model: "Duster",
        subtitle: "1.3 TCE FLEX INTENSE CVT",
        transmission: "AUTOMÁTICO",
        mileage: "7.000 KM",
        fuel: "FLEX",
        price: "R$ 117.490,00",
        images_url: [
          "car1.jpg",
          "car2.jpg",
          "car3.jpg",
          "car4.jpg",
          "car5.jpg"
        ],
        promotion: false,
        color: "Cinza",  
        plate_end: "9",  
        badges: []
      },
      {
        id: 7,
        year: "2019",
        brand: "Hyundai",
        model: "Creta",
        subtitle: "2.0 FLEX PRESTIGE AUTOMÁTICO",
        transmission: "AUTOMÁTICO",
        mileage: "48.000 KM",
        fuel: "FLEX",
        price: "R$ 101.900,00",
        images_url: [
          "car1.jpg",
          "car2.jpg",
          "car3.jpg",
          "car4.jpg",
          "car5.jpg"
        ],
        promotion: false,
        color: "Azul",  
        plate_end: "6",  
        badges: [
          { text: "TOP", type: "top" }
        ]
      },
      {
        id: 8,
        year: "2021",
        brand: "Jeep",
        model: "Compass",
        subtitle: "1.3 T270 TURBO FLEX LONGITUDE",
        transmission: "AUTOMÁTICO",
        mileage: "22.000 KM",
        fuel: "FLEX",
        price: "R$ 148.000,00",
        images_url: [
          "car1.jpg",
          "car2.jpg",
          "car3.jpg",
          "car4.jpg",
          "car5.jpg"
        ],
        promotion: false,
        color: "Prata",  
        plate_end: "8",  
        badges: [
          { text: "TURBO", type: "turbo" }
        ]
      },
      {
        id: 9,
        year: "2023",
        brand: "Toyota",
        model: "Corolla",
        subtitle: "1.8 HYBRID FLEX ALTIS CVT",
        transmission: "AUTOMÁTICO",
        mileage: "3.000 KM",
        fuel: "HÍBRIDO",
        price: "R$ 176.490,00",
        images_url: [
          "car1.jpg",
          "car2.jpg",
          "car3.jpg",
          "car4.jpg",
          "car5.jpg"
        ],
                promotion: false,
        color: "Preto",  
        plate_end: "1",  
        badges: [
          { text: "HYBRID", type: "hybrid" }
        ]
      },
      {
        id: 10,
        year: "2020",
        brand: "Nissan",
        model: "Kicks",
        subtitle: "1.6 16V FLEX SL XTRONIC",
        transmission: "AUTOMÁTICO",
        mileage: "35.000 KM",
        fuel: "FLEX",
        price: "R$ 97.990,00",
        images_url: [
          "car1.jpg",
          "car2.jpg",
          "car3.jpg",
          "car4.jpg",
          "car5.jpg"
        ],
        promotion: false,
        color: "Cinza",  
        plate_end: "0",  
        badges: []
      }
    ]
  end
end
