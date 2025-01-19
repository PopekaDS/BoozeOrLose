#ifndef PLAYSCREEN_H
#define PLAYSCREEN_H

#pragma once
#include <QWidget>

class PlayScreen : public QWidget {
    Q_OBJECT
public:
    PlayScreen(QWidget* pwgt = 0);

public slots:
    void slotScreenRules();
};


#endif // PLAYSCREEN_H
