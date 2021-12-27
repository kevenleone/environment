#!/usr/bin/env zx

(async () => {
    const PORT = await question('Which PORT you want to kill ? ');

    await $(`kill -9 $(lsof -t -i:${PORT})`);

    console.log(`${chalk.green("PORT terminated")}`);
})()