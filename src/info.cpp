#include "info.h"

Info::Info() : QObject()
{
    // www.merproject.org/~lbt/qt/qtsysteminfo/qdeviceinfo.html
    QDeviceInfo *devinfo = new QDeviceInfo();

    // http://www.merproject.org/~lbt/qt/qtsysteminfo/qnetworkinfo.html
    QNetworkInfo *networkinfo = new QNetworkInfo();


    wifiMac = networkinfo->macAddress(QNetworkInfo::WlanMode, 0);
    imei = devinfo->imei(0);
    model = devinfo->model();
    deviceID = devinfo->uniqueDeviceID();
    name = devinfo->productName();
    versionOC = devinfo->version(QDeviceInfo::Os);

    delete devinfo;
    delete networkinfo;
}


QString Info::getImei()
{
    if (imei.isEmpty())
        return "None";

    return imei;
}
QString Info::getWifiMac()
{
    if (wifiMac.isEmpty())
        return "None";

    return wifiMac;
}
QString Info::getModel()
{
    return model;
}
QString Info::getDeviceID()
{
    return deviceID;
}
QString Info::getVersionOC()
{
    return versionOC;
}
QString Info::getName()
{
    return name;
}
