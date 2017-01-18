# README #

OpenSCAD models for distox2 calibration device

Version 0.0.4

## Brief ##

Calibration device consists of 2 things: calibration solid with direction holes, distox2 mounting handle.

Currently there are 2 OpenSCAD models of solid: cube and truncated cuboctahedron. 

Cube corresponds to calibration directions used in distox2 manual.

Truncated cuboctahedron provides additional 12 calibration directions, saving 'original' cube ones.

## HOWTO produce STL files for 3D print ##

1) Open .scad files in latest [OpenSCAD](http://www.openscad.org/).
2) Render (press F6).
3) Export to STL via menu item: File -> Export -> Export as STL.

## Notes ##

Handle design is compatible with leica disto X310 (E7400x US version of the X310) only.

To model your own calibration shape solid you can use Wolfram Mathematica notebook DistoX_Cube_shape_variants.nb,
which provides sample usage of polyhedron data and the way how to convert it into OpenSCAD format.

## Pictures, Videos ##

* Cube

![alt text](http://i.piccy.info/i9/5196d77742ae2d85f8caadca67d43976/1484739665/14242/1052775/Cube_500.jpg "Cube")

* Truncated cuboctahedron

![alt text](http://i.piccy.info/i9/828afb9a6a9418ddcedd640c004ece3a/1484738948/14279/1052775/TruncatedCuboctahedron_500.jpg "Truncated cuboctahedron")

* Handle

![alt text](http://i.piccy.info/i9/b2a5eee3955f9b9c73d18c5cc8d29773/1484739741/11081/1052775/Handle_500.jpg "Handle")

* Sample usage video

[![Calibrating distox2 with cube in Lithuanian forest](http://img.youtube.com/vi/A7fQdz4pPtE/0.jpg)](https://www.youtube.com/watch?v=A7fQdz4pPtE)

## Discussion ##

* English

* Russian

### Contact ###

If any questions contact nikita.kozlov@gmail.com