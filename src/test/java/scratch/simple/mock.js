session.items = session.items || [];

session.items.push(request.body);

response.body = session.items;
