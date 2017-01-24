/**
 * GraphHopper Directions API
 * With the GraphHopper Directions API you get reliable and fast web services for routing and more with world wide coverage. We offer A-to-B routing via the Routing API optionally with turn instructions and elevation data as well as route optimization with various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API. 
 *
 * OpenAPI spec version: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

/*
 * SWGRelation.h
 * 
 * 
 */

#ifndef SWGRelation_H_
#define SWGRelation_H_

#include <QJsonObject>


#include <QList>
#include <QString>

#include "SWGObject.h"


namespace Swagger {

class SWGRelation: public SWGObject {
public:
    SWGRelation();
    SWGRelation(QString* json);
    virtual ~SWGRelation();
    void init();
    void cleanup();

    QString asJson ();
    QJsonObject* asJsonObject();
    void fromJsonObject(QJsonObject &json);
    SWGRelation* fromJson(QString &jsonString);

    QString* getType();
    void setType(QString* type);

    QList<QString*>* getIds();
    void setIds(QList<QString*>* ids);

    QString* getVehicleId();
    void setVehicleId(QString* vehicle_id);


private:
    QString* type;
    QList<QString*>* ids;
    QString* vehicle_id;
};

} /* namespace Swagger */

#endif /* SWGRelation_H_ */