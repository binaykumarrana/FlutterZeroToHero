import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChipsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ChipClass(title: 'Flutter Chip Demo'),
    );
  }
}

// ignore: must_be_immutable
class ChipClass extends StatefulWidget {
  ChipClass({Key key, this.title}) : super(key: key);

  final String title;
  bool isDelete = true;
  bool isSelected = false;

  @override
  State<StatefulWidget> createState() {
    return _ChipClassState();
  }
}

class _ChipClassState extends State<ChipClass> {
  int _value = 1;

  final List<ActorFilterEntry> _cast = <ActorFilterEntry>[
    const ActorFilterEntry('Aaron Burr', 'AB'),
    const ActorFilterEntry('Alexander Hamilton', 'AH'),
    const ActorFilterEntry('Eliza Hamilton', 'EH'),
    const ActorFilterEntry('James Madison', 'JM'),
  ];
  List<String> _filters = <String>[];

  Iterable<Widget> get actorWidgets sync* {
    for (ActorFilterEntry actor in _cast) {
      yield Padding(
        padding: const EdgeInsets.all(4.0),
        child: FilterChip(
          avatar: CircleAvatar(child: Text(actor.initials)),
          label: Text(actor.name),
          selected: _filters.contains(actor.name),
          onSelected: (bool value) {
            setState(() {
              if (value) {
                _filters.add(actor.name);
              } else {
                _filters.removeWhere((String name) {
                  return name == actor.name;
                });
              }
            });
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Visibility(
            visible: widget.isDelete,
            child: Chip(
              label: Text('David'),
              avatar: CircleAvatar(
                backgroundColor: Theme.of(context).accentColor,
                child: Text('D'),
              ),
              backgroundColor: Colors.amber,
              labelStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              labelPadding: EdgeInsets.all(8),
              elevation: 16,
              shadowColor: Colors.amberAccent,
              deleteIcon: Icon(
                Icons.cancel,
              ),
              onDeleted: () {
                setState(() {
                  widget.isDelete = !widget.isDelete;
                });
              },
              deleteIconColor: Colors.redAccent,
              deleteButtonTooltipMessage: 'Remove this chip',
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(8),
                    topLeft: Radius.circular(8)),
              ),
            ),
          ),
          Chip(
            label: Text('David'),
            avatar: CircleAvatar(
              backgroundColor: Theme.of(context).accentColor,
              child: Text('D'),
            ),
            backgroundColor: Colors.amber,
            labelStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            labelPadding: EdgeInsets.all(8),
            elevation: 16,
            shadowColor: Colors.amberAccent,
            deleteIcon: Icon(
              Icons.cancel,
            ),
            onDeleted: () {
              setState(() {
                widget.isDelete = !widget.isDelete;
              });
            },
            deleteIconColor: Colors.redAccent,
            deleteButtonTooltipMessage: 'Remove this chip',
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8), topLeft: Radius.circular(8)),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InputChip(
            avatar: CircleAvatar(
              backgroundColor: Theme.of(context).accentColor,
              child: Text('D'),
            ),
            label: Text('David'),
            onPressed: () {
              print('David got clicked');
            },
          ),
          InputChip(
            label: Text('Wifi'),
            labelStyle: TextStyle(
                fontSize: 20,
                color: widget.isSelected ? Colors.black : Colors.white),
            padding: EdgeInsets.all(16),
            pressElevation: 25,
            onSelected: (isSelected) {
              setState(() {
                widget.isSelected = !widget.isSelected;
              });
            },
            selected: widget.isSelected,
            selectedColor: Colors.amber,
            selectedShadowColor: Colors.amber[200],
            checkmarkColor: Theme.of(context).accentColor,
          ),
          Wrap(
            children: [
              ChoiceChip(
                label: Text('Small'),
                selected: false,
                onSelected: (bool selected) {
                  setState(() {});
                },
              ),
              SizedBox(
                width: 10,
              ),
              ChoiceChip(
                label: Text('Big'),
                selected: true,
                onSelected: (bool selected) {
                  setState(() {});
                },
                selectedColor: Theme.of(context).accentColor,
              ),
            ],
          ),
          Wrap(
            children: [
              FilterChip(
                label: Text('Popcorn'),
                selected: false,
                onSelected: (bool selected) {
                  setState(() {});
                },
              ),
              SizedBox(
                width: 10,
              ),
              FilterChip(
                label: Text('Coke'),
                labelStyle: TextStyle(
                    color: widget.isSelected ? Colors.black : Colors.white),
                selected: widget.isSelected,
                onSelected: (bool selected) {
                  setState(() {
                    widget.isSelected = !widget.isSelected;
                  });
                },
                selectedColor: Theme.of(context).accentColor,
                checkmarkColor: Colors.black,
              ),
            ],
          ),
          Wrap(
            children: [
              ActionChip(
                label: Text('Play'),
                onPressed: () {
                  //TODO
                },
              ),
              SizedBox(
                width: 10,
              ),
              ActionChip(
                avatar: widget.isSelected ? CircularProgressIndicator() : null,
                label: Text(
                    '${widget.isSelected ? 'Downloading...' : 'Download'}'),
                labelStyle: TextStyle(color: Colors.white),
                onPressed: () {
                  setState(() {
                    widget.isSelected = !widget.isSelected;
                  });
                },
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Wrap(
                children: actorWidgets.toList(),
              ),
              Text('Look for: ${_filters.join(', ')}'),
            ],
          ),
          ActionChip(
              avatar: CircleAvatar(
                backgroundColor: Colors.grey.shade800,
                child: Text('AB'),
              ),
              label: Text('Aaron Burr'),
              onPressed: () {
                print("If you stand for nothing, Burr, what’ll you fall for?");
              })
        ],
      ),
    );
  }
}

class ActorFilterEntry {
  const ActorFilterEntry(this.name, this.initials);

  final String name;
  final String initials;
}
