<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel alpineJs</title>

        <script src="https://cdn.tailwindcss.com"></script>
        <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
    </head>
    <body class="m-3">
        <div class="border rounded">
            <h1 class="rounded-t bg-gray-300 py-2 text-center text-gray-700 pl-4">
                <strong>Indirizzi email (alpineJs)</strong>
                <span class="float-right mr-4">
                    <a href="{{ route('dashboard_livewire') }}" class="text-blue-600 hover:text-blue-400">Dashboard Livewire</a>
                </span>
            </h1>
            <div class="grid gap-7 m-3">
                <div x-data="AlpineUsersTable()" x-init="getUsersFromApi()">
                    <div class="grid grid-cols-3">
                        <div class="col-span-2"></div>
                        <div>
                            <input
                                x-model="search"
                                type="text"
                                class="w-full placeholder:text-slate-400 block bg-white border border-slate-300 rounded-md py-2 px-3 shadow-sm focus:outline-none focus:border-sky-500 focus:ring-sky-500 focus:ring-1 sm:text-sm"
                                placeholder="Cerca per nome o per email..."
                            />
                        </div>
                    </div>
                    <table class="min-w-full text-left mt-7">
                        <thead>
                            <tr>
                                <th scope="col" class="border p-2">Nome</th>
                                <th scope="col" class="border p-2">Email</th>
                                <th scope="col" class="border p-2">Regione</th>
                                <th scope="col" class="border p-2">Tags</th>
                            </tr>
                            </template>
                        </thead>
                        <tbody class="border text-sm">

                            {{-- ciclo for --}}
                            <template x-for="user in users">
                                <tr>
                                    <td class="border p-2" x-text="user.name"></td>
                                    <td class="border p-2" x-text="user.email"></td>
                                    <td class="border p-2" x-text="user.region"></td>
                                    <td class="border p-2" x-text="user.tags"></td>
                                </tr>
                            </template>

                        </tbody>
                    </table>

                </div>
                <div>
                    paginazione
                </div>
            </div>
        </div>

    <script>
        function AlpineUsersTable() {
            return {
                search: "",
                users: [],

                getUsersFromApi() {
                    return fetch('/api/users')
                        .then(response => response.json())
                        .then(response => this.users = response.data)
                }
            }
        }
    </script>

    </body>
</html>
