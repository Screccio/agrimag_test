<?php

namespace App\Http\Livewire;

use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;

class Dashboard extends Component
{
    //evita il refresh della pagina
    use WithPagination;

    //la riprendo in wire:model...
    public $search = '';

    public function render()
    {
        return view('livewire.dashboard', [
            'users' => User::orderby('name','asc')
                ->where('name', 'like', '%'.$this->search.'%')
                ->orWhere('email', 'like', '%'.$this->search.'%')
                ->paginate(20),
        ]);
    }
}
