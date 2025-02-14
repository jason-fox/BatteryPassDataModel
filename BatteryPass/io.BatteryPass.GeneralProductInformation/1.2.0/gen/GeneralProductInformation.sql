CREATE TABLE IF NOT EXISTS general_product_information (
  product_identifier STRING NOT NULL COMMENT 'Unique identifier allowing for the unambiguous identification of each individual battery and hence each corresponding battery passport (exploration of a potential additional battery passport identifier (not requried per Battery Regulation) ongoing).
DIN DKE Spec chapter reference: 6.1.2.2',
  battery_passport_identifier STRING NOT NULL COMMENT 'Unique identifier allowing for the unambiguous identification of each individual battery and hence each corresponding battery passport (exploration of a potential additional battery passport identifier (not requried per Battery Regulation) ongoing).',
  battery_category STRING NOT NULL COMMENT 'Categories relevant for the battery passport: LMT battery, ?electric vehicle battery, stationary or other industrial battery >2kWh.

DIN DKE Spec chapter reference: 6.1.3.5',
  manufacturer_information__contact_name STRING NOT NULL,
  manufacturer_information__postal_address__address_country STRING NOT NULL,
  manufacturer_information__postal_address__postal_code STRING NOT NULL,
  manufacturer_information__postal_address__street_address STRING NOT NULL,
  manufacturer_information__identifier STRING NOT NULL,
  manufacturing_date TIMESTAMP NOT NULL COMMENT 'The manufacturing date should not only relate to the battery model, but to the battery item.

The date code should comply with DIN ISO 8601 1:2020 12 and ISO 8601 2:2019.

DIN DKE Spec chapter reference: 6.1.3.2',
  battery_status STRING NOT NULL COMMENT 'Lifecycle status of the battery. Status defined from a list, with the options suggested as follows: \'original\', \'repurposed\', \'reused\', \'remanufactured\', \'waste\'.

DIN DKE Spec chapter reference: 6.1.3.7',
  battery_mass FLOAT NOT NULL COMMENT 'Mass of the entire battery in kilograms. Voluntary: if the battery is defined on pack or module level: also weight of the modules and/or cells.

DIN DKE Spec chapter reference: 6.1.3.6',
  manufacturing_place__address_country STRING NOT NULL,
  manufacturing_place__postal_code STRING NOT NULL,
  manufacturing_place__street_address STRING NOT NULL,
  operator_information__contact_name STRING NOT NULL,
  operator_information__postal_address__address_country STRING NOT NULL,
  operator_information__postal_address__postal_code STRING NOT NULL,
  operator_information__postal_address__street_address STRING NOT NULL,
  operator_information__identifier STRING NOT NULL,
  putting_into_service TIMESTAMP NOT NULL COMMENT 'Where appropriate, the battery passport must include information on the date of putting the battery into service. BR Annex VI Part A (1); Art. 3(33); Art. 38(7); ESPR Art. 2(32)

DIN DKE Spec chapter reference: 6.1.3.3',
  warrenty_period STRING NOT NULL COMMENT 'The battery passport must include information about the period for which the commercial warranty applies.

DIN DKE Spec chapter reference: 6.1.3.4'
)
COMMENT 'Mandatory data: Product identification; manufacturer?s identification; manufacturing place; manufacturing date; battery category; battery weight; battery status (Annex VI, Part A and Annex XIII)
Copyright ? 2023 Circulor (for and on behalf of the Battery Pass Consortium). This work is li-censed under a Creative Commons License Attribution-NonCommercial 4.0 International (CC BY-NC 4.0). Readers may reproduce material for their own publications, as long as it is not sold com-mercially and is given appropriate attribution.'
TBLPROPERTIES ('x-samm-aspect-model-urn'='urn:samm:io.BatteryPass.GeneralProductInformation:1.0.0#GeneralProductInformation');
