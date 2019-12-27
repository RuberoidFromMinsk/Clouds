using Printer as _Printer from '../db/Printer';
using Manufacturer as _Manufacturer from '../db/ExtraInfo2';
using Rooms as _Rooms from '../db/ExtraInfo2';

service odata {

  entity Printer @(
		title: 'Printer',
		Capabilities: {
			InsertRestrictions: {Insertable: false},
			UpdateRestrictions: {Updatable: false},
			DeleteRestrictions: {Deletable: false}
		}
	) as projection on _Printer;

  entity Manufacturer @(
		title: 'Manufacturer',
		Capabilities: {
			InsertRestrictions: {Insertable: false},
			UpdateRestrictions: {Updatable: false},
			DeleteRestrictions: {Deletable: false}
		}
	) as projection on _Manufacturer;

    entity Rooms @(
		title: 'Rooms',
		Capabilities: {
			InsertRestrictions: {Insertable: false},
			UpdateRestrictions: {Updatable: false},
			DeleteRestrictions: {Deletable: false}
		}
	) as projection on _Rooms;

}
