#include <QDebug>

#include "playScreen.h"

PlayScreen::PlayScreen(QObject* parent) : QObject(parent)
{

}

void PlayScreen::receivePlayWithoutMaster()
{
    qDebug() << "Играть без ведущего";
    emit SendPlayWithoutMaster();
}

void PlayScreen::receivePlayWithMaster()
{
    qDebug() << "Играть с ведущим";
    emit SendPlayWithMaster();
}

void PlayScreen::receiveRules()
{
    qDebug() << "Правила";
    emit SendRules();
}

void PlayScreen::receiveQuit()
{
    qDebug() << "Выход";
    emit SendQuit();
}
