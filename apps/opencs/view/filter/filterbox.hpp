#ifndef CSV_FILTER_FILTERBOX_H
#define CSV_FILTER_FILTERBOX_H

#include <vector>

#include <QWidget>

#include "../../model/filter/node.hpp"
#include "../../model/world/universalid.hpp"

namespace CSMWorld
{
    class Data;
}

namespace CSVFilter
{
    class FilterBox : public QWidget
    {
            Q_OBJECT

            void dragEnterEvent (QDragEnterEvent* event);

            void dropEvent (QDropEvent* event);

            void dragMoveEvent(QDragMoveEvent *event);

        public:

            FilterBox (CSMWorld::Data& data, QWidget *parent = 0);

    public slots:
        void createFilter(std::vector<std::pair<std::string, std::vector<std::string> > >& filterSource);

        signals:

            void recordFilterChanged (boost::shared_ptr<CSMFilter::Node> filter);
            void recordDropped (std::vector<CSMWorld::UniversalId>& types);
    };

}

#endif

