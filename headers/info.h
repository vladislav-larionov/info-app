#ifndef INFO_H
#define INFO_H

#include <QObject>
#include <QtSystemInfo/QDeviceInfo>
#include <QNetworkInfo>

class Info : public QObject
{
    Q_OBJECT
private:
    QString imei;
    QString wifiMac;
    QString model;
    QString deviceID;
    QString versionOC;
    QString name;
public:
    Info();
    Q_INVOKABLE QString getImei();
    Q_INVOKABLE QString getWifiMac();
    Q_INVOKABLE QString getModel();
    Q_INVOKABLE QString getDeviceID();
    Q_INVOKABLE QString getVersionOC();
    Q_INVOKABLE QString getName();
signals:

public slots:
};

#endif
