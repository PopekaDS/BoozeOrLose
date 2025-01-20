#include <QtWidgets>
#include <QQuickWidget>
#include <QQmlContext>
#include <QDebug>

#include "playScreen.h"

// PlayScreen::PlayScreen(QWidget* pwgt/*=0*/) : QWidget(pwgt)
// {
//     QQuickWidget* pv = new QQuickWidget(QUrl("qrc:/main.qml"));

//     QVBoxLayout* pvbx = new QVBoxLayout;
//     pvbx->addWidget(pv);
//     setLayout(pvbx);
// }
// // ----------------------------------------------------------------------
// void PlayScreen::slotScreenRules()
// {
//     QMessageBox::information(0, "Message", "It's my message");
// }

// PlayScreen::PlayScreen(QObject *parent)
//     : QObject{parent}
// {}
PlayScreen::PlayScreen(QObject *parent)
    : QObject(parent)
{

}

void PlayScreen::onClickedHeader()
{
    QMessageBox::information(0, "Message", "It's my message");
    // qDebug() << "button: " << str;
}
