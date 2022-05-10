# ruby-email-delete

This sample will show you to easily delete an email with the Nylas Ruby SDK.

## Setup

### System dependencies

- Ruby v3.x

### Gather environment variables

You'll need the following values:

```text
ACCESS_TOKEN = 
CLIENT_ID = 
CLIENT_SECRET = 
```

Add the above values to a new `.env` file:

```bash
$ touch .env # Then add your env variables
```

### Install dependencies

```bash
$ gem install nylas
$ gem install dotenv
```

## Usage

Run the script using the `ruby` command:

```bash
$ ruby DeleteEmail.rb
```

When your message is successfully deleted, you'll get the following output in your terminal:

```text
Your message was succesfully deleted
```

## Learn more

Visit our [Nylas Ruby SDK documentation](https://developer.nylas.com/docs/developer-tools/sdk/ruby-sdk/) to learn more.
