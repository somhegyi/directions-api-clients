part of swagger.api;

@Entity()
class MatrixRequest {
  /* Specifiy multiple points for which the weight-, route-, time- or distance-matrix should be calculated. In this case the starts are identical to the destinations. If there are N points, then NxN entries will be calculated. The order of the point parameter is important. Specify at least three points. Cannot be used together with from_point or to_point. Is a string with the format longitude,latitude. */
  @Property(name: 'points')
  List<List<double>> points = [];
  
/* The starting points for the routes. E.g. if you want to calculate the three routes A-&gt;1, A-&gt;2, A-&gt;3 then you have one from_point parameter and three to_point parameters. Is a string with the format longitude,latitude. */
  @Property(name: 'from_points')
  List<List<double>> fromPoints = [];
  
/* The destination points for the routes. Is a string with the format longitude,latitude. */
  @Property(name: 'to_points')
  List<List<double>> toPoints = [];
  
/* Optional parameter. Specifies a hint for each point in the `points` array to prefer a certain street for the closest location lookup. E.g. if there is an address or house with two or more neighboring streets you can control for which street the closest location is looked up. */
  @Property(name: 'point_hints')
  List<String> pointHints = [];
  
/* More information for the `from_points` array. See `point_hints` */
  @Property(name: 'from_point_hints')
  List<String> fromPointHints = [];
  
/* More information for the `to_points` array. See `point_hints` */
  @Property(name: 'to_point_hints')
  List<String> toPointHints = [];
  
/* Specifies which arrays should be included in the response. Specify one or more of the following options 'weights', 'times', 'distances'. To specify more than one array use e.g. out_array=times&amp;out_array=distances. The units of the entries of distances are meters, of times are seconds and of weights is arbitrary and it can differ for different vehicles or versions of this API. */
  @Property(name: 'out_arrays')
  List<String> outArrays = [];
  
/* The vehicle for which the route should be calculated. Other vehicles are foot, small_truck etc, see here for the details. */
  @Property(name: 'vehicle')
  String vehicle = null;
  
  MatrixRequest();

  @override
  String toString()  {
    return 'MatrixRequest[points=$points, fromPoints=$fromPoints, toPoints=$toPoints, pointHints=$pointHints, fromPointHints=$fromPointHints, toPointHints=$toPointHints, outArrays=$outArrays, vehicle=$vehicle, ]';
  }
}

