#include "easyspectrogram_plugin.h"
#include <qqml.h>

void EasySpectrogramPlugin::registerTypes(const char *uri)
{
    Q_INIT_RESOURCE(Qml);
    // @uri EasySpectrogram
    qmlRegisterType<QObject>( uri, 1, 0, "QmlObj");
    //qmlRegisterType(QUrl("qrc:/QmlItem.qml"), uri, 1, 0, "QmlItem");
}

