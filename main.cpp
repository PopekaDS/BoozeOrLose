#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtWidgets>
#include <QQmlComponent>

#include "playScreen.h"

// int main(int argc, char *argv[])
// {
//     QGuiApplication app(argc, argv);

//     QQmlApplicationEngine engine;
//     const QUrl url(QStringLiteral("qrc:/main.qml"));
//     QObject::connect(
//         &engine,
//         &QQmlApplicationEngine::objectCreated,
//         &app,
//         [url](QObject *obj, const QUrl &objUrl) {
//             if (!obj && url == objUrl)
//                 QCoreApplication::exit(-1);
//         },
//         Qt::QueuedConnection);
//     engine.load(url);

//     return app.exec();
// }

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    QQmlComponent component(&engine, QUrl(QLatin1String("qrc:/main.qml")));

    QObject *mainPage = component.create();
    QObject* item = mainPage->findChild<QObject *>("header");

    PlayScreen playScreen(mainPage);
    QObject::connect(item, SIGNAL(clickedHeader()), &playScreen, SLOT(onClickedHeader()));

    // // регистрация типа
    // qmlRegisterType<PlayScreen>("playscreen", 1, 0,"PlayScreen");

    // const QUrl url("qrc:/main.qml");
    // engine.load(url);

    return app.exec();
}
