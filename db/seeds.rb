models = Model.create([{ name: 'Weather' }, { name: 'Electricity' }, { name: 'Transportation' }, { name: 'Geography' }, { name: 'Human' }, { name: 'Time' } ])

entities = Entity.create([ { name: 'Hurricane', model: models[0] }, { name: 'Blizzard', model: models[0] } ])

entities.concat Entity.create([{ name: 'Distribution Line', model: models[1] }, { name: 'Power Substation', model: models[1] }, { name: 'Utility Pole', model: models[1] }, { name: 'Transformer', model: models[1] }, { name: 'Generating Station', model: models[1] }, { name: 'Generating Step Up Transformer', model: models[1] }, { name: 'Generating Step Down Transformer', model: models[1] }])

entities.concat Entity.create([{ name: 'Track', model: models[2] }, { name: 'Station', model: models[2] }, { name: 'Rail Line', model: models[2] }, { name: 'Train', model: models[2] }, { name: 'Route', model: models[2] }])

entities.concat Entity.create([{ name: 'Location', model: models[3] }, { name: 'Elevation', model: models[3] }])

entities.concat Entity.create([{ name: 'Person', model: models[4] }])

entities.concat Entity.create([{ name: 'Calendar', model: models[5] }, { name: 'Time', model: models[5] }])

entities.concat Entity.create([{ name: 'Aircraft', model: models[2] }])

properties = Property.create([
{ name: 'Rainfall Rat', entity: entities[0] },
{ name: 'Wind Speed', entity: entities[0] },
{ name: 'Duration', entity: entities[0] },
{ name: 'Storm Surge', entity: entities[0] },
{ name: 'Snowfall Rate', entity: entities[1] },
{ name: 'Wind Speed', entity: entities[1] },
{ name: 'Visibility', entity: entities[1] },
{ name: 'Temperature', entity: entities[1] },
{ name: 'Duration', entity: entities[1] },
{ name: 'Status', entity: entities[2] },
{ name: 'Source', entity: entities[2] },
{ name: 'Destination', entity: entities[2] },
{ name: 'Capacity', entity: entities[2] },
{ name: 'Elevation', entity: entities[2] },
{ name: 'AboveGround', entity: entities[2] },
{ name: 'Status', entity: entities[3] },
{ name: 'Location', entity: entities[3] },
{ name: 'Capacity', entity: entities[3] },
{ name: 'Location', entity: entities[4] },
{ name: 'Distribution Line', entity: entities[4] },
{ name: 'Status', entity: entities[4] },
{ name: 'Status', entity: entities[5] },
{ name: 'Power Produced', entity: entities[6] },
{ name: 'Location', entity: entities[6] },
{ name: 'Fueled B', entity: entities[6] },
{ name: 'Status', entity: entities[6] },
{ name: 'Location', entity: entities[7] },
{ name: 'Max Load', entity: entities[7] },
{ name: 'Status', entity: entities[7] },
{ name: 'Input:output Voltage Ratio', entity: entities[7] },
{ name: 'Input:Output Voltage Ratio', entity: entities[8] },
{ name: 'Max Load', entity: entities[8] },
{ name: 'Status', entity: entities[8] },
{ name: 'Location', entity: entities[8] },
{ name: 'Rail Line', entity: entities[9] },
{ name: 'Station', entity: entities[9] },
{ name: 'Station', entity: entities[9] },
{ name: 'Electricity Available', entity: entities[9] },
{ name: 'Electrified By', entity: entities[9] },
{ name: 'Elevatiob', entity: entities[9] },
{ name: 'AboveGround', entity: entities[9] },
{ name: 'Electrified', entity: entities[9] },
{ name: 'Water Accumulation', entity: entities[9] },
{ name: 'Snow Accumulation', entity: entities[9] },
{ name: 'Status', entity: entities[9] },
{ name: 'Distance', entity: entities[9] },
{ name: 'Location', entity: entities[10] },
{ name: 'Service Rate', entity: entities[10] },
{ name: 'Rail Line', entity: entities[10] },
{ name: 'Elevation', entity: entities[10] },
{ name: 'AboveGround', entity: entities[10] },
{ name: 'Electrified By', entity: entities[10] },
{ name: 'Electricity Required', entity: entities[10] },
{ name: 'Color', entity: entities[11] },
{ name: 'Track List', entity: entities[11] },
{ name: 'Station List', entity: entities[11] },
{ name: 'Track Location', entity: entities[12] },
{ name: 'Station Location', entity: entities[12] },
{ name: 'Route', entity: entities[12] },
{ name: 'Speed', entity: entities[12] },
{ name: 'Conductor', entity: entities[12] },
{ name: 'Capacity ', entity: entities[12] },
{ name: 'Status', entity: entities[12] },
{ name: 'Electricity Required', entity: entities[12] },
{ name: 'Rail Line', entity: entities[13] },
{ name: 'Station Arrival Time', entity: entities[13] },
{ name: 'Train', entity: entities[13] },
{ name: 'Longitude', entity: entities[14] },
{ name: 'Lattitude', entity: entities[14] },
{ name: 'FtAboveSeaLevel', entity: entities[15] },
{ name: 'Visibility ', entity: entities[16] },
{ name: 'Name', entity: entities[16] },
{ name: 'Height', entity: entities[16] },
{ name: 'Weight', entity: entities[16] },
{ name: 'Gender', entity: entities[16] },
{ name: 'Month', entity: entities[17] },
{ name: 'Day', entity: entities[17] },
{ name: 'Year', entity: entities[17] },
{ name: 'Hour', entity: entities[18] },
{ name: 'Minute', entity: entities[18] },
{ name: 'Second', entity: entities[18] }])

properties.concat Property.create([{ name: 'Engines', entity: entities[19] }, { name: 'Wings', entity: entities[19] }])