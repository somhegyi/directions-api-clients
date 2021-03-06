# GraphHopper Directions API
# 
# You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.
# 
# OpenAPI spec version: 1.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Relation Class
#'
#' @field type 
#' @field ids 
#' @field vehicle_id 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Relation <- R6::R6Class(
  'Relation',
  public = list(
    `type` = NULL,
    `ids` = NULL,
    `vehicle_id` = NULL,
    initialize = function(`type`, `ids`, `vehicle_id`){
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`ids`)) {
        stopifnot(is.list(`ids`), length(`ids`) != 0)
        lapply(`ids`, function(x) stopifnot(is.character(x)))
        self$`ids` <- `ids`
      }
      if (!missing(`vehicle_id`)) {
        stopifnot(is.character(`vehicle_id`), length(`vehicle_id`) == 1)
        self$`vehicle_id` <- `vehicle_id`
      }
    },
    toJSON = function() {
      RelationObject <- list()
      if (!is.null(self$`type`)) {
        RelationObject[['type']] <- self$`type`
      }
      if (!is.null(self$`ids`)) {
        RelationObject[['ids']] <- self$`ids`
      }
      if (!is.null(self$`vehicle_id`)) {
        RelationObject[['vehicle_id']] <- self$`vehicle_id`
      }

      RelationObject
    },
    fromJSON = function(RelationJson) {
      RelationObject <- jsonlite::fromJSON(RelationJson)
      if (!is.null(RelationObject$`type`)) {
        self$`type` <- RelationObject$`type`
      }
      if (!is.null(RelationObject$`ids`)) {
        self$`ids` <- RelationObject$`ids`
      }
      if (!is.null(RelationObject$`vehicle_id`)) {
        self$`vehicle_id` <- RelationObject$`vehicle_id`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "type": %s,
           "ids": [%s],
           "vehicle_id": %s
        }',
        self$`type`,
        lapply(self$`ids`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`vehicle_id`
      )
    },
    fromJSONString = function(RelationJson) {
      RelationObject <- jsonlite::fromJSON(RelationJson)
      self$`type` <- RelationObject$`type`
      self$`ids` <- RelationObject$`ids`
      self$`vehicle_id` <- RelationObject$`vehicle_id`
    }
  )
)
