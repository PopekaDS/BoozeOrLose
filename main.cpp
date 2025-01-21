#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "playScreen.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    PlayScreen playscreen;

    QQmlApplicationEngine engine;
    QQmlContext *context = engine.rootContext();
    context->setContextProperty("playscreen", &playscreen);

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
