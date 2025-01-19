#include <QtWidgets>
#include <QQuickWidget>
#include <QQmlContext>

#include "playScreen.h"

PlayScreen::PlayScreen(QWidget* pwgt/*=0*/) : QWidget(pwgt)
{
    QQuickWidget* pv = new QQuickWidget(QUrl("qrc:/main.qml"));

        QVBoxLayout* pvbx = new QVBoxLayout;
        pvbx->addWidget(pv);
        setLayout(pvbx);
}
// ----------------------------------------------------------------------
void PlayScreen::slotScreenRules()
{
    QMessageBox::information(0, "Message", "It's my message");
}



// #include <QtWidgets>
// #include <QQuickWidget>
// #include <QQmlContext>

// #include "MyWidget.h"

// // ----------------------------------------------------------------------
// MyWidget::MyWidget(QWidget* pwgt/*=0*/) : QWidget(pwgt)
// {
//     QQuickWidget* pv = new QQuickWidget(QUrl("qrc:/main.qml"));

//     QVBoxLayout* pvbx = new QVBoxLayout;
//     pvbx->addWidget(pv);
//     setLayout(pvbx);

//     QQmlContext* pcon = pv->rootContext();
//     QStringList lst;
//     for (int i = 0; i < 100; ++i) {
//         lst << "Item" + QString::number(i);
//     }
//     QStringListModel* pmodel = new QStringListModel(this);
//     pmodel->setStringList(lst);

//     pcon->setContextProperty("myModel", pmodel);
//     pcon->setContextProperty("myText", "It's my text!");
//     pcon->setContextProperty("myColor", QColor(Qt::yellow));
//     pcon->setContextProperty("myWidget", this);
// }

// // ----------------------------------------------------------------------
// void MyWidget::slotDisplayDialog()
// {
//     QMessageBox::information(0, "Message", "It's my message");
// }
