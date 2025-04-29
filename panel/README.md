# enclosure guide

we now offer two kinds of enclosures for these projects:

- __stand-alone enclosure__ - made from a front and back panel, plus screws and standoffs

![image](https://github.com/user-attachments/assets/c8ca06cb-3161-4168-bc0d-9f4170944288)

- __eurorack enclosure__ - made from just a front panel, plus screws and standoffs to mount in a eurorack case

![image](https://github.com/user-attachments/assets/83c93ba4-fa0c-486c-ad63-6030569e0186)


you can support these projects by getting enclosure kits directly through [underscores.shop](https://underscores.shop) - [standalone](https://underscores.shop/product/standalone-enclosure-kit-for-recurboy/) and [eurorack](https://underscores.shop/product/eurorack-kit-for-recurboy/) - _if ordered with an assembled unit we will also assemble the enclosure for you also_

# diy part sourcing

## panel fabrication

included in this repo are the cad files needed to create your own panels. they are designed in kicads pcbnew - so open the `.kicad_pcb` file to edit them directly. 


you can also use the exported `gerber` files (here they are combined in `.zip`) to get panels fabricated in __fr4__ at a pcb house like the ones we sell. (these usually have a minimum order of 5 or 10)  


another option for diy fabrication is using a lasercutter to cut the panels in wood or acrylic. this is what i do when prototyping panels so you should find some exports in `svg` or `dxf` that are laser ready. _note that the `edgecut` layer is for cutting out and the `silkscreen` layer is for the panel markings. you may need to edit these files or export directly from pcbnew to suit the cutter you are using_


it would also be possible to import these panel files into a sketch in 3d cad program like __freecad__ to create a 3d enclosure for 3d printing... however this is not something i have files prepared for

## 3d printing

i use some custom modelled switch and pot caps for my enclosure kits. you can print these yourself or upload them to a 3d printing fabrication service.

## enclosure kit BOM

things like screws and standoffs can be sourced from lots of places. i will link my source as an example although these links often expire. you could even 3d print your own standoffs from the _id/od_ and length (inner diameter 3.2mm, outer diameter 5mm)

### standalone enclosure

item | source
--- | ---
Front panel | _default_panel_ file
Back panel | _back_panel_ file
rubber feet x4 | [aliexpress](https://www.aliexpress.com/item/1005005287385986.html?pdp_ext_f=%7B%22sku_id%22:%2212000032498489269%22%7D)
pot cap x4 | 3d printed from [stl file](https://github.com/cyberboy666/enclosure_kit_commons/blob/main/cap_pot_6mm_shaft/cap_pot_star_single_r2.8.stl)
M3-35mm screw x4 | [aliexpress](https://www.aliexpress.com/item/1005002364189187.html?pdp_ext_f=%7B%22sku_id%22:%2212000020354274909%22%7D)
M3 nut x4 | [aliexpress](https://www.aliexpress.com/item/1005007502691265.html?pdp_ext_f=%7B"sku_id":"12000041089836836"%7D)
m3-10mm standoff x4 (front) | [aliexpress](https://www.aliexpress.com/item/1005003086579258.html?pdp_ext_f=%7B"sku_id":"12000023995222161"%7D)
m3-18mm standoff x4 (back) | [aliexpresss](https://www.aliexpress.com/item/1005003086579258.html?pdp_ext_f=%7B"sku_id":"12000023995222167"%7D)

### eurorack enclosure

item | source
--- | ---
Eurorack front panel | _eurorack_panel_ file
Eurorack 16pin power header | [tayda](https://www.taydaelectronics.com/16-pin-box-header-connector-2-54mm.html)
Pot cap x4 | 3d printed from [stl file](https://github.com/cyberboy666/enclosure_kit_commons/blob/main/cap_pot_6mm_shaft/cap_pot_star_single_r2.8.stl)
M3-25mm screw x4 | [aliexpress](https://www.aliexpress.com/item/1005002364189187.html?pdp_ext_f=%7B%22sku_id%22:%2212000020354274907%22%7D)
M3 nut x4 | [aliexpress](https://www.aliexpress.com/item/1005007502691265.html?pdp_ext_f=%7B"sku_id":"12000041089836836"%7D)
m3-10mm standoff x4 (front) | [aliexpress](https://www.aliexpress.com/item/1005003086579258.html?pdp_ext_f=%7B"sku_id":"12000023995222161"%7D)
m3-8mm screw x4 | [aliexpress](https://www.aliexpress.com/item/1005002364189187.html?pdp_ext_f=%7B%22sku_id%22:%2212000020354274900%22%7D)

