
"use strict";

let Point2D = require('./Point2D.js');
let Polygon2D = require('./Polygon2D.js');
let PointCloudWithPose = require('./PointCloudWithPose.js');
let PolygonWithHolesStamped = require('./PolygonWithHolesStamped.js');
let PolygonWithHoles = require('./PolygonWithHoles.js');
let PolynomialTrajectory = require('./PolynomialTrajectory.js');
let PolynomialTrajectory4D = require('./PolynomialTrajectory4D.js');
let PolynomialSegment4D = require('./PolynomialSegment4D.js');
let PolynomialSegment = require('./PolynomialSegment.js');

module.exports = {
  Point2D: Point2D,
  Polygon2D: Polygon2D,
  PointCloudWithPose: PointCloudWithPose,
  PolygonWithHolesStamped: PolygonWithHolesStamped,
  PolygonWithHoles: PolygonWithHoles,
  PolynomialTrajectory: PolynomialTrajectory,
  PolynomialTrajectory4D: PolynomialTrajectory4D,
  PolynomialSegment4D: PolynomialSegment4D,
  PolynomialSegment: PolynomialSegment,
};
