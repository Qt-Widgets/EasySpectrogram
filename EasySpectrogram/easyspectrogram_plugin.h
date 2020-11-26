#ifndef EASYSPECTROGRAM_PLUGIN_H
#define EASYSPECTROGRAM_PLUGIN_H

#include <QQmlExtensionPlugin>

class EasySpectrogramPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)
public:
    void registerTypes(const char *uri) override;
};

#endif // EASYSPECTROGRAM_PLUGIN_H
