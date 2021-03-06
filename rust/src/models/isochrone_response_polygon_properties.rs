/* 
 * GraphHopper Directions API
 *
 * You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
 *
 * OpenAPI spec version: 1.0.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */


#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct IsochroneResponsePolygonProperties {
  #[serde(rename = "bucket")]
  bucket: Option<i32>
}

impl IsochroneResponsePolygonProperties {
  pub fn new() -> IsochroneResponsePolygonProperties {
    IsochroneResponsePolygonProperties {
      bucket: None
    }
  }

  pub fn set_bucket(&mut self, bucket: i32) {
    self.bucket = Some(bucket);
  }

  pub fn with_bucket(mut self, bucket: i32) -> IsochroneResponsePolygonProperties {
    self.bucket = Some(bucket);
    self
  }

  pub fn bucket(&self) -> Option<&i32> {
    self.bucket.as_ref()
  }

  pub fn reset_bucket(&mut self) {
    self.bucket = None;
  }

}



