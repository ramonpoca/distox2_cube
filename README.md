# Readme #

OpenSCAD models for distox2 calibration device by Mykyta Kozlov. Version 0.0.5.

# Brief #

Calibration device consists of 2 things: calibration solid with direction holes, distox2 mounting handle.

Currently there are 2 OpenSCAD models of solid: cube and truncated cuboctahedron.

Cube corresponds to calibration directions used in [distox2 calibration manual](http://paperless.bheeb.ch/download/DistoX2_CalibrationManual.pdf).

Truncated cuboctahedron provides additional 12 calibration directions, saving 'original' cube ones.

Also provided 2 models of handle: 

1. To be printed from plastic and ready to use
2. More robust handle to use aluminiun pipe or shaft as main rotating unit. Aluminium part needs to be glued into plastic printed part.

# HOWTO produce STL files for 3D printing #

1. Open .scad files in latest [OpenSCAD](http://www.openscad.org/).
2. Render (press F6).
3. Export to STL via menu item: File -> Export -> Export as STL.

# Pictures #

* Cube

![alt text](http://i.piccy.info/i9/5196d77742ae2d85f8caadca67d43976/1484739665/14242/1052775/Cube_500.jpg "Cube")

* Truncated cuboctahedron

![alt text](http://i.piccy.info/i9/5cd8980e6cd57bdd1cd9eb29b2e7aec0/1484785447/15732/1052775/TruncatedCuboctahedron_500.jpg "Truncated cuboctahedron")

* Handle

![alt text](http://i.piccy.info/i9/5f5997eb21dba8b4e36045270226b0bd/1484754900/10059/1052775/Handle_500.jpg "Handle")

* Handle version 2

![alt text](http://i.piccy.info/i9/0955ce5fee551a8deef4297241d5c3cb/1484785378/10293/1052775/Handle_v2_500.jpg "Handle")

# Sample mount #

Here goes an implementation example of mounting device to fix cube on tripod. Design by Vytis Vilkas.

* Bottom view

![alt text](http://i.piccy.info/i9/8d9aa07ea423a69a90807d3d6a7e5134/1484816590/21865/1052775/DSC_5808_500.jpg "Bottom view")

* Side view

![alt text](http://i.piccy.info/i9/bd2168976a896241d4ee4d4666c34cd8/1484816680/19293/1052775/DSC_5809_500.jpg "Side view")

As it can be seen from photos above - cube is mounted to square O-shape rod by two non-magnetic screws.

There are space of 5 mm width left between rod surface and cube face - to allow free handle rotation, while doing calibration measurements along the rod.

Rod also has a bottom hole - for access while doing vertical calibration measurement with that hole.

For mounting truncated cuboctahedron rod needs to have additional 45 degree hole to acces calibration hole in cube edge.

Also solid aluminium handle is shown. If doing handle from plastic, especially handle v2 - you need to glue 8 mm nonmagnetic 
rotation axis into 8 mm handle hole. For truncated cuboctahedron axis length needs to be 2 time more than in original design,
again - to access hole in cube edge.

Second hole in handle's U-shape used for mounting leica disto x310 to handle by 1/4" nonmagnetic screw (same as used to mounting photo camera to tripod).

In the left side there are aluminium nut and aluminium screw, both having 1/4" screw are mounted through the rod to each other.
They are in 'transportation mode'. When doing calibration - screw is used to attach leica to rotating handle, nut is used to mount rod to standart tripods plate.

# Notes #

Handle design is compatible with leica disto X310 (E7400x US version of the X310) only.

To model your own calibration shape solid you can use Wolfram Mathematica notebook DistoX_Cube_shape_variants.nb,
which provides sample usage of polyhedron data and the way how to convert it into OpenSCAD format. You need Wolfram Mathematica to open such file.

After printing hole and shaft surfaces need to be finished to desired level of friction. Usualy enough to freely rotate, but not falling down being inserted into hole.

Handle v2 and Truncated cuboctahedron also has squared keys to optionally restrict rotation step around calibration axis by multiply of 45 degree.

# Sample usage video #

[![Calibrating distox2 with cube in Lithuanian forest](http://img.youtube.com/vi/A7fQdz4pPtE/0.jpg)](https://www.youtube.com/watch?v=A7fQdz4pPtE)

# Discussion #

* English

1. [Reddit's /r/caving](https://www.reddit.com/r/caving/comments/56mu1l/distox2_calibration_device/).
2. [Cavers of Facebook](https://www.facebook.com/groups/2205123638/permalink/10153870390228639/).

* Russian

1. [Speleoukraine forum](http://www.speleoukraine.org/forum/viewtopic.php?f=19&t=267&sid=d517e04313eabdb7c628c214259eedf8#p4050).
2. [Soumgan forum](http://www.soumgan.com/phpBB2/viewtopic.php?f=24&t=798).

# Contact #

If any questions contact nikita.kozlov@gmail.com