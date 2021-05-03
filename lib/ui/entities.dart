import 'package:flutter/material.dart';

List<List<String>> _dataLocation = [
  ["Germany", "45"],
  ["London", "8"],
  ["NewYork", "16"],
  ["United Kingdoms", "4"]
];

List<List<String>> _dataItTerms = [
  ["API", "45"],
  ["CRM", "8"],
  ["Microsoft virtual studio", "16"],
  ["SaaS", "4"],
  ["SaaS Enablement", "45"],
  ["SaaS Development Costs", "5"],
  ["SaaS Development Lifecycle and Life", "4"],
  ["Cloud", "400"]
];

List<List<String>> _dataOrganizations = [
  ["Cloud Computing Glossary", "45"],
  ["Cloud Computing Overview", "8"],
  ["Developers", "16"],
  ["Human Ressources Management", "4"],
  ["Kubernetes", "45"],
  ["PaaS Overview", "5"],
  ["PaaS Providers & Vendors", "4"],
  ["Independant Softwar Deployment", "400"]
];

List<List<String>> _dataPhoneNumbers = [
  ["+310205219434", "45"],
  ["+4402078682040", "8"],
  ["+49089203006187", "16"],
  ["5183832130", "4"],
  ["5185332898", "45"]
];

class Entities extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:30.0, vertical: 10),
      child: Wrap(
        children: [
          Row(
            children: [
              Expanded(child: _location()),
              Expanded(child: _itTerms()),
            ],
          ),
          Row(
            children: [
              Expanded(child: _organization()),
              Expanded(child: _phonenumbers()),
            ],
          ),
        ],
      ),
    );
  }

  Widget _location() => Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'Locations',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Icon(Icons.info_outline),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:8.0),
          child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 5),
                child: Column(children: [
            for (int index = 0; index < _dataLocation.length; index++)
                Column(
                  children: [Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${_dataLocation[index][0]}'),
                      Text('${_dataLocation[index][1]} Documents', style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,),)
                    ],
                  ),
                  if (index!= _dataLocation.length-1)
                  Divider()]
                ),

          ]),
              )),
        )
      ]);

  Widget _itTerms() => Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'It Terms',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Icon(Icons.info_outline),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:8.0),
          child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 5),
                child: Column(children: [
                  for (int index = 0; index < _dataItTerms.length; index++)
                    Column(
                        children: [Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${_dataItTerms[index][0]}'),
                            Text('${_dataItTerms[index][1]} Documents', style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,),)
                          ],
                        ),
                          if (index!= _dataItTerms.length-1)
                            Divider()]
                    ),

                ]),
              )),
        )
      ]);

  Widget _organization() => Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'Organization',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Icon(Icons.info_outline),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:8.0),
          child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 5),
                child: Column(children: [
                  for (int index = 0; index < _dataOrganizations.length; index++)
                    Column(
                        children: [Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${_dataOrganizations[index][0]}'),
                            Text('${_dataOrganizations[index][1]} Documents', style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,),)
                          ],
                        ),
                          if (index!= _dataOrganizations.length-1)
                            Divider()]
                    ),

                ]),
              )),
        )
      ]);

  Widget _phonenumbers() => Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'Phone Numbers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Icon(Icons.info_outline),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:8.0),
          child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 5),
                child: Column(children: [
                  for (int index = 0; index < _dataPhoneNumbers.length; index++)
                    Column(
                        children: [Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${_dataPhoneNumbers[index][0]}'),
                            Text('${_dataPhoneNumbers[index][1]} Documents', style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,),)
                          ],
                        ),
                          if (index!= _dataPhoneNumbers.length-1)
                            Divider()]
                    ),

                ]),
              )),
        )
      ]);
}
