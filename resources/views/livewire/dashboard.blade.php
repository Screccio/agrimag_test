<div class="border rounded">
    <h1 class="rounded-t bg-gray-300 py-2 text-center text-gray-700 pl-4">
        <strong>Indirizzi email (Livewire)</strong>
        <span class="float-right mr-4">
            <a href="{{ route('index_users') }}" class="text-blue-600 hover:text-blue-400">Dashboard alpineJs</a>
        </span>
    </h1>
    
    <div class="grid gap-7 m-3">
        <div class="grid grid-cols-3">
            <div class="col-span-2"></div>
            <div>
                <input type="text" wire:model="search" class="w-full placeholder:text-slate-400 block bg-white border border-slate-300 rounded-md py-2 px-3 shadow-sm focus:outline-none focus:border-sky-500 focus:ring-sky-500 focus:ring-1 sm:text-sm" placeholder="Cerca per nome o per email..."/>
            </div>
        </div>
        <div>
            <table class="min-w-full text-left">
                <thead>
                    <tr>
                        <th scope="col" class="border p-2">Nome</th>
                        <th scope="col" class="border p-2">Email</th>
                        <th scope="col" class="border p-2">Regione</th>
                        <th scope="col" class="border p-2">Tags</th>
                    </tr>
                </thead>
                <tbody class="border text-sm">

                    @forelse($users as $user)
                        <tr>
                            <td class="border p-2">{{ $user->name }}</td>
                            <td class="border p-2">{{ $user->email }}</td>
                            <td class="border p-2">{{ $user->region }}</td>
                            <td class="border p-2">{{ $user->tags }}</td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="4" class="border p-4 text-gray-400 text-xl text-center">Nessun risultato trovato...</td>
                        </tr>
                    @endforelse

                </tbody>
            </table>
        </div>
        <div>
            {{ $users->links() }}
        </div>
    </div>
</div>
