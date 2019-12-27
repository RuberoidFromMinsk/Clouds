using Printer from './Printer';
using Id2 from './Printer';

		entity Manufacturer {
		    key man_id : Id2;
		    p_id : String(4);
		    city : String(100);
		    street : String(100);
		    postcode : Integer;
		};

		entity Rooms {
		    key r_id : Id2;
		    p_id : String(4);
		    room_num : String(100);

    		toPrinter : association to one Printer on toPrinter.p_id = p_id;
		};
