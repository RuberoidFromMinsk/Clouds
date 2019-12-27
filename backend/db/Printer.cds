type Id2 : String(4);
using Manufacturer from './ExtraInfo2';
using Rooms from './ExtraInfo2';

entity Printer {
    key p_id : Id2;
    name : String(100);

    toRooms : association to many Rooms on toRooms.p_id = p_id;
    toManufacturer : association to one Manufacturer on toManufacturer.p_id = p_id;
};
