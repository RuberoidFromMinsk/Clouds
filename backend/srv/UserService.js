//MOCK service
module.exports = (srv) => {

    srv.on('READ', 'Printer', () => [
        {
            p_id: 'U001', name: "A00134",
            toRooms: [
                {r_id: "C001", p_id: "U001", room_num: "1703", toPrinter: {p_id: 'U001', name: "A00134"}}
            ],
            toManufacturer: [
                { man_id: "A001", p_id: "U001", city: "Minsk", street: "Lopatsina" }
            ]
        }
    ]);

    srv.on('READ', 'Manufacturer', () => [
        { man_id: "A001", p_id: "U001", city: "Minsk", street: "Lopatsina", postcode: 220093 }
    ]);

    srv.on('READ', 'Rooms', () => [
        {r_id: "C001", p_id: "U001", room_num: "1703", toPrinter: {p_id: 'U001', name: "A00134"}}
    ]);

};
